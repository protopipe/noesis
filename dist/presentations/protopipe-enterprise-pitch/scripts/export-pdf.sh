#!/usr/bin/env bash
set -euo pipefail

project_root="$(cd "$(dirname "$0")/.." && pwd)"
cd "$project_root"

export XDG_CACHE_HOME="${XDG_CACHE_HOME:-/tmp/quarto-cache}"

./scripts/render.sh

browser="${BROWSER_BIN:-}"
if [[ -z "$browser" ]]; then
  for candidate in chromium-browser chromium google-chrome google-chrome-stable; do
    if command -v "$candidate" >/dev/null 2>&1; then
      browser="$(command -v "$candidate")"
      break
    fi
  done
fi

if [[ -z "$browser" ]]; then
  echo "No Chromium-compatible browser found." >&2
  echo "Set BROWSER_BIN to the browser executable." >&2
  exit 1
fi

output="${1:-$project_root/_site/protopipe-enterprise-pitch.pdf}"
mkdir -p "$(dirname "$output")"

presentation_url="file://$project_root/_site/presentation/index.html?print-pdf"

"$browser" \
  --headless \
  --no-sandbox \
  --disable-gpu \
  --disable-dev-shm-usage \
  --no-pdf-header-footer \
  --print-to-pdf="$output" \
  --run-all-compositor-stages-before-draw \
  --virtual-time-budget=10000 \
  "$presentation_url"

echo "PDF created: $output"
