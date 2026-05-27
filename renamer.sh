#!/bin/bash

# bash script to rename all the cat files. keeps original file type (except for MP4 since I forgot)

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
