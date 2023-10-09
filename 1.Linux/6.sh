#!/bin/bash

dir_path="$HOME/"

echo "Файлы в каталоге $dir_path:"
for file in "$dir_path"*; do
    if [[ -f "$file" ]]; then
        basename "$file"
    fi
done
