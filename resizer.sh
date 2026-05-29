#!/usr/bin/env bash

set -euo pipefail

SRC_DIR="images/Cat"
FULL_DIR="images/Cat_Fullsize"

# Create fullsize backup directory
mkdir -p "$FULL_DIR"

echo "Copying originals to $FULL_DIR ..."

# Copy originals and rename to *_fullsize.ext
for file in "$SRC_DIR"/*; do
  [ -f "$file" ] || continue

  filename=$(basename "$file")

  name="${filename%.*}"
  ext="${filename##*.}"

  cp "$file" "$FULL_DIR/${name}_fullsize.${ext}"
done

echo "Resizing images in $SRC_DIR ..."

# Resize images in-place
for file in "$SRC_DIR"/*; do
  [ -f "$file" ] || continue

  ext="${file##*.}"
  ext_lower=$(echo "$ext" | tr '[:upper:]' '[:lower:]')

  case "$ext_lower" in
  jpg | jpeg | gif)
    echo "Resizing $file"

    # Resize to fit within 1000x1000 while preserving aspect ratio
    magick "$file" \
      -resize '1000x1000>' \
      "$file"
    ;;
  *)
    echo "Skipping unsupported file: $file"
    ;;
  esac
done

echo "Done."
