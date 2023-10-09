#!/bin/bash

echo -n "Введите имя файла: "
read -r file_name

if [[ -f "$file_name" ]]; then
    echo "Содержимое файла $file_name:"
    cat "$file_name"
else
    echo "Файл $file_name не найден или не является обычным файлом."
fi
