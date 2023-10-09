#!/bin/bash

echo -n "Введите имя каталога: "
read -r dir_name

if [[ -d "$dir_name" ]]; then
    echo "Файлы в каталоге $dir_name:"
    for file in "$dir_name"/*; do
        if [[ -f "$file" ]]; then
            basename "$file"
        fi
    done
else
    echo "Каталог $dir_name не найден или не является каталогом."
fi
