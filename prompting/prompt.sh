#!/usr/bin/env bash
set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
PACKS_DIR="$ROOT/prompting/packs"
HEADERS_DIR="$ROOT/prompting/headers"
OUT_DIR="$ROOT/dist/context"

usage() {
  cat <<'EOF'
Usage:
  prompting/prompt.sh [<pack-name>] [--no-header] [--stdout]

Examples:
  prompting/prompt.sh strategy
  prompting/prompt.sh architecture --stdout
  prompting/prompt.sh design --no-header
  prompting/prompt.sh            # all chapters
EOF
}

PACK="${1:-all}"
shift || true

NO_HEADER=false
TO_STDOUT=false

while [[ $# -gt 0 ]]; do
  case "$1" in
    --no-header) NO_HEADER=true; shift;;
    --stdout) TO_STDOUT=true; shift;;
    -h|--help) usage; exit 0;;
    *) echo "Unknown option: $1" >&2; usage; exit 2;;
  esac
done

PACK_FILE="$PACKS_DIR/$PACK.txt"
HEADER_FILE="$HEADERS_DIR/$PACK.md"
OUT_FILE="$OUT_DIR/$PACK.md"

mkdir -p "$OUT_DIR"

tmp="$(mktemp)"
trap 'rm -f "$tmp"' EXIT

emit_header() {
  if $NO_HEADER; then return 0; fi
  if [[ -f "$HEADER_FILE" ]]; then
    cat "$HEADER_FILE" >> "$tmp"
    printf "\n\n---\n\n" >> "$tmp"
  else
    cat >> "$tmp" <<EOF
# AI Context Pack: ${PACK}

Use the following repository context. Prefer canonical terminology from the glossary.
If information is missing, state assumptions explicitly.
Return structured output in Markdown.

---

EOF
  fi
}

emit_section() {
  local title="$1"
  local path="$2"

  if [[ ! -f "$path" ]]; then
    echo "Missing file referenced by pack: $path" >&2
    exit 3
  fi

  printf "## %s\n\n" "$title" >> "$tmp"
  printf "<!-- source: %s -->\n\n" "${path#$ROOT/}" >> "$tmp"
  cat "$path" >> "$tmp"
  printf "\n\n---\n\n" >> "$tmp"
}

emit_header

emit_from_pack() {
  if [[ ! -f "$PACK_FILE" ]]; then
    echo "Pack not found: $PACK_FILE" >&2
    echo "Available packs:" >&2
    ls -1 "$PACKS_DIR" | sed 's/\.txt$//' >&2
    exit 2
  fi

  while IFS= read -r line || [[ -n "$line" ]]; do
    line="${line%%#*}"
    line="$(echo "$line" | awk '{$1=$1;print}')"  # trim
    [[ -z "$line" ]] && continue

    file="${line%%|*}"
    title=""
    if [[ "$line" == *"|"* ]]; then
      title="$(echo "${line#*|}" | awk '{$1=$1;print}')"
    fi

    file="$(echo "$file" | awk '{$1=$1;print}')"
    abs="$ROOT/doc/$file"

    if [[ -z "$title" ]]; then
      title="$(basename "$file")"
    fi

    emit_section "$title" "$abs"
  done < "$PACK_FILE"
}

emit_all_chapters() {
  # Alle Markdown-Dateien unter doc/ einsammeln, lexikographisch sortiert.
  # Das passt zu deiner 01_ / 02_ / ...-Struktur.
  while IFS= read -r abs; do
    rel="${abs#$ROOT/doc/}"

    # Section-Titel: "01_why/golden-circle.md" -> "01_why / golden-circle"
    # (du kannst hier natürlich beliebig feiner formatieren)
    base="${rel%.md}"
    title="${base//\// \/ }"

    emit_section "$title" "$abs"
  done < <(find "$ROOT/doc" -type f -name '*.md' | LC_ALL=C sort)
}

if [[ "$PACK" == "all" ]]; then
  emit_all_chapters
else
  emit_from_pack
fi

if $TO_STDOUT; then
  cat "$tmp"
else
  mv "$tmp" "$OUT_FILE"
  echo "Wrote: ${OUT_FILE#$ROOT/}"
fi

