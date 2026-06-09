#!/usr/bin/env bash
set -euo pipefail

project_root="$(cd "$(dirname "$0")/.." && pwd)"
source_file="$project_root/../../mockups/ProtopipeCockpit.html"
target_dir="$project_root/assets/mockups"
target_file="$target_dir/ProtopipeCockpit.html"

mkdir -p "$target_dir"

sed \
  's|https://raw.githubusercontent.com/protopipe/noesis/refs/heads/main/doc/09_identity/assets/logo/out/svg/logo-color-small.svg|../logos/protopipe-logo-color-full.svg|' \
  "$source_file" > "$target_file"
