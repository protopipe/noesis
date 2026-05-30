#!/usr/bin/env bash
set -euo pipefail

cd "$(dirname "$0")/.."
mkdir -p diagrams/generated
repo_root="$(git rev-parse --show-toplevel)"
container_runtime="${CONTAINER_RUNTIME:-podman}"

"$container_runtime" run --rm \
  -v "$repo_root:/work" \
  -w /work \
  plantuml/plantuml:1.2025.2 \
  -tsvg \
  -o ../../generated \
  dist/presentations/protopipe-enterprise-pitch/diagrams/source/plantuml
