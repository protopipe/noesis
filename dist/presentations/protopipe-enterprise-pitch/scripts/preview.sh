#!/usr/bin/env bash
set -euo pipefail

cd "$(dirname "$0")/.."
quarto preview presentation/index.qmd

