#!/usr/bin/env bash
set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
PACKS_DIR="$ROOT/prompting/packs"
ROLES_DIR="$ROOT/prompting/roles"
OUT_DIR="$ROOT/dist/context"
DOC_DIR="$ROOT/doc"

usage() {
  cat <<'EOF'
Usage:
  prompting/prompt.sh <mode> [options]

Modes:
  all            Dump entire Noesis (all Markdown under doc/)
  none           No content; only header/role/keywords
  <pack-id>      Render one curated pack from prompting/packs/<pack-id>.yml|yaml

Options:
  --stdout            Print to stdout (otherwise writes dist/context/<mode>.md)
  --no-header         Do not emit default header
  --role <id>         Inject prompting/roles/<id>.md
  --kw <term>         Append files matching keyword (repeatable)

Examples:
  prompting/prompt.sh all --stdout
  prompting/prompt.sh architecture --role cto
  prompting/prompt.sh none --kw "qualitygate" --stdout
EOF
}

require() {
  command -v "$1" >/dev/null 2>&1 || {
    echo "Missing dependency: $1" >&2
    exit 10
  }
}

PACK="${1:-all}"
shift || true

TO_STDOUT=false
NO_HEADER=false
ROLE=""
KEYWORDS=()

while [[ $# -gt 0 ]]; do
  case "$1" in
    --stdout) TO_STDOUT=true; shift;;
    --no-header) NO_HEADER=true; shift;;
    --role) ROLE="${2:-}"; shift 2;;
    --kw) KEYWORDS+=("${2:-}"); shift 2;;
    -h|--help) usage; exit 0;;
    *) echo "Unknown option: $1" >&2; usage; exit 2;;
  esac
done

mkdir -p "$OUT_DIR"

# Track already-emitted files to avoid duplicates across pack+keywords
declare -A EMITTED=()

read_pack_files() {
  local f1="$PACKS_DIR/$PACK.yml"
  local f2="$PACKS_DIR/$PACK.yaml"
  if [[ -f "$f1" ]]; then
    echo "$f1"
  elif [[ -f "$f2" ]]; then
    echo "$f2"
  else
    echo "Pack not found: $PACK" >&2
    echo "Available packs:" >&2
    ls -1 "$PACKS_DIR" 2>/dev/null | sed -E 's/\.(yml|yaml)$//' | LC_ALL=C sort >&2 || true
    exit 2
  fi
}

normalize_abs() {
  local p="$1"
  if [[ "$p" = /* ]]; then
    echo "$p"
  else
    echo "$ROOT/$p"
  fi
}

normalize_doc_abs() {
  local p="$1"
  if [[ "$p" = /* ]]; then
    echo "$p"
  else
    echo "$ROOT/doc/$p"
  fi
}

collect_files() {
  local path="$1"
  local mode="${2-glob}"

  local abs=$(normalize_doc_abs "$path")

  case "$mode" in
    file)
      [[ -f "$abs" ]] || { echo "Missing file: $path" >&2; exit 3; }
      echo "$abs"
      ;;
    dir)
      [[ -d "$abs" ]] || { echo "Missing dir: $path" >&2; exit 3; }
      find "$abs" -type f -name '*.md' | LC_ALL=C sort
      ;;
    glob)
      # shellcheck disable=SC2086
      find $abs -type f -name '*.md' | LC_ALL=C sort
      ;;
    *)
      echo "Unknown include.mode: $mode (expected file|dir|glob)" >&2
      exit 4
      ;;
  esac
}

apply_excludes() {
  # patterns are bash globs matched against ROOT-relative path
  local -a excl=("$@")
  while IFS= read -r abs; do
    [[ -z "$abs" ]] && continue
    local rel="${abs#$ROOT/}"
    local skip=false
    for pat in "${excl[@]}"; do
      pat="${pat#./}"
      if [[ "$rel" == $pat ]]; then
        skip=true
        break
      fi
    done
    $skip || echo "$abs"
  done
}

emit_header_default() {
  local title="$1"
  cat >> "$tmp" <<EOF
# AI Context Pack: ${title}

Use the following repository context. Prefer canonical terminology from the glossary.
If information is missing, state assumptions explicitly.
Return structured output in Markdown.

---

EOF
}

emit_role() {
  [[ -z "$ROLE" ]] && return 0
  local rf="$ROLES_DIR/$ROLE.md"
  [[ -f "$rf" ]] || { echo "Role not found: $ROLE (expected $rf)" >&2; exit 11; }

  printf "\n\n## Role Context\n\n" >> "$tmp"
  printf "<!-- source: %s -->\n\n" "prompting/roles/$ROLE.md" >> "$tmp"
  cat "$rf" >> "$tmp"
  printf "\n\n---\n\n" >> "$tmp"
}

emit_all_chapters() {
  local separator="\n\n---\n\n"
  local source_comments="true"

  # Titel-Sektion für den Dump (optional, aber hilfreich)
  printf "## Noesis Dump (doc/)\n\n" >> "$tmp"

  while IFS= read -r abs; do
    [[ -z "$abs" ]] && continue

    local rel="${abs#$DOC_DIR/}"
    local base="${rel%.md}"
    local title="${base//\// \/ }"

    emit_section_single "$title" "$abs" "$source_comments" "$separator"
  done < <(find "$DOC_DIR" -type f -name '*.md' | LC_ALL=C sort)

  printf "\n\n" >> "$tmp"
}


emit_section_single() {
  local title="$1"
  local abs="$2"
  local source_comments="$3"
  local separator="$4"

  [[ -n "${EMITTED[$abs]+x}" ]] && return 0
  EMITTED["$abs"]=1

  printf "### %s\n\n" "$title" >> "$tmp"
  if [[ "$source_comments" == "true" ]]; then
    printf "<!-- source: %s -->\n\n" "${abs#$ROOT/}" >> "$tmp"
  fi
  cat "$abs" >> "$tmp"
  printf "%b" "$separator" >> "$tmp"
}

render_pack() {
  local pack_file="$1"

  local pack_id pack_title header separator source_comments sort_mode
  pack_id="$(yq -r '.id // ""' "$pack_file")"
  pack_title="$(yq -r '.title // .id // "Context Pack"' "$pack_file")"
  header="$(yq -r '.output.header.template // ""' "$pack_file")"
  separator="$(yq -r '.options.separator // "\n\n---\n\n"' "$pack_file")"
  source_comments="$(yq -r '.options.source_comments // true' "$pack_file")"
  sort_mode="$(yq -r '.options.sort // "lex"' "$pack_file")"

  if ! $NO_HEADER; then
    if [[ -n "$header" ]]; then
      printf "%s\n\n---\n\n" "$header" >> "$tmp"
    else
      emit_header_default "$pack_title"
    fi
  fi

  emit_role

  mapfile -t excludes < <(yq -r '.context.exclude[]?' "$pack_file")

  local n
  n="$(yq -r '.context.include | length' "$pack_file")"
  if [[ "$n" == "0" ]]; then
    echo "Pack has no include entries: ${pack_file#$ROOT/}" >&2
    exit 5
  fi

  local i
  for ((i=0; i<n; i++)); do
    local path
    path="$(yq -r ".context.include[$i]" "$pack_file")"

    if [[ -z "$path" || "$path" == "null" ]]; then
      echo "include[$i] missing in ${pack_file#$ROOT/}" >&2
      exit 6
    fi

    mapfile -t files < <(collect_files "$path" | apply_excludes "${excludes[@]}")

    if [[ "${#files[@]}" -eq 0 ]]; then
      echo "[WARN] No files matched include[$i] ($path) after excludes in ${pack_file#$ROOT/}" >&2
    fi

    if [[ "$sort_mode" == "mtime" ]]; then
      mapfile -t files < <(for f in "${files[@]}"; do
        printf "%s\t%s\n" "$(stat -c '%Y' "$f" 2>/dev/null || stat -f '%m' "$f")" "$f"
      done | sort -n | awk '{print $2}')
    fi

    for abs in "${files[@]}"; do
      emit_section_single "$(basename "${abs#$DOC_DIR/}")" "$abs" "$source_comments" "$separator"
    done
    printf "\n\n" >> "$tmp"
  done
}

collect_keyword_files() {
  local root="${1:-$DOC_DIR}"
  shift || true
  local -a terms=("$@")
  [[ "${#terms[@]}" -eq 0 ]] && return 0

  local -a found=()
  for t in "${terms[@]}"; do
    while IFS= read -r f; do
      [[ -z "$f" ]] && continue
      found+=("$f")
    done < <(grep -ril --include='*.md' -- "$t" "$root" 2>/dev/null || true)
  done

  printf "%s\n" "${found[@]}" | LC_ALL=C sort -u
}

emit_keywords() {
  [[ "${#KEYWORDS[@]}" -eq 0 ]] && return 0

  local separator="\n\n---\n\n"
  local source_comments="true"
  local max=30

  printf "## Keyword Matches\n\n" >> "$tmp"
  printf "_Keywords: %s_\n\n" "$(printf "%s, " "${KEYWORDS[@]}" | sed 's/, $//')" >> "$tmp"

  local count=0
  while IFS= read -r abs; do
    [[ -z "$abs" ]] && continue
    # Use relative-ish title for readability
    local rel="${abs#$DOC_DIR/}"
    emit_section_single "$rel" "$abs" "$source_comments" "$separator"
    count=$((count+1))
    [[ "$count" -ge "$max" ]] && break
  done < <(collect_keyword_files "$DOC_DIR" "${KEYWORDS[@]}")

  printf "\n\n" >> "$tmp"
}

main() {
  require yq
  mkdir -p "$OUT_DIR"

  tmp="$(mktemp)"
  trap 'rm -f "$tmp"' EXIT

  case "$PACK" in
    none)
      if ! $NO_HEADER; then
        emit_header_default "none"
      fi
      emit_role
      emit_keywords
      out="$OUT_DIR/none.md"
      ;;
    all)
      if ! $NO_HEADER; then
        emit_header_default "all"
      fi
      emit_role
      emit_all_chapters
      emit_keywords
      out="$OUT_DIR/all.md"
      ;;
    *)
      pf="$(read_pack_files)"
      render_pack "$pf"
      emit_keywords
      out="$OUT_DIR/$PACK.md"
      ;;
  esac

  if $TO_STDOUT; then
    cat "$tmp"
  else
    mv "$tmp" "$out"
    echo "Wrote: ${out#$ROOT/}"
  fi
}

main

