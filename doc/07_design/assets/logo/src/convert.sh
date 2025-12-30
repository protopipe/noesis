#!/usr/bin/env bash
set -e

SRC="."
OUT="../out"


filename="logo-color-full"
for filename in "logo-color-full" "logo-color-small"; do
  inkscape $SRC/$filename.svg \
    --export-plain-svg=$OUT/svg/$filename.svg \
    --actions="select-all;object-to-path;export-do"

  for w in 420 840 1260; do
    inkscape $SRC/$filename.svg \
      --export-type=png \
      --export-width=$w \
      --export-filename=$OUT/png/$filename-${w}px.png
  done

  inkscape $SRC/$filename.svg \
    --export-type=pdf \
    --export-filename=$OUT/pdf/$filename.pdf

done
