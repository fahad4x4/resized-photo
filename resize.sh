#!/bin/bash

# Author: Fahad Alghathbar
# Created on: April 14, 2023

if ! command -v convert > /dev/null 2>&1; then
    echo "ImageMagick (convert) is not installed"
    exit 1
fi

shopt -s nullglob nocaseglob
files=( *.jpg *.jpeg *.png )
if [ ${#files[@]} -eq 0 ]; then
    echo "No images found in this folder"
    exit 1
fi

mkdir -p resized
for file in "${files[@]}"; do
    echo "Resizing $file"
    convert "$file" -resize 50% "resized/$file"
done
