#!/bin/bash

# Rename all image files in a folder to:
# 1.jpg, 2.jpeg, 3.heic, ...
# while preserving original file extensions

DIR="images/Cat"

cd "$DIR" || exit

counter=1

for file in *; do
  # Skip non-files
  [ -f "$file" ] || continue

  # Get extension
  ext="${file##*.}"

  # Convert extension to lowercase
  lower_ext=$(echo "$ext" | tr '[:upper:]' '[:lower:]')

  # Only rename supported image files
  case "$lower_ext" in
  jpg | jpeg | png | webp | gif | heic)
    mv "$file" "${counter}.${lower_ext}"
    ((counter++))
    ;;
  esac
done
