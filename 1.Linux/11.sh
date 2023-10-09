#!/bin/bash

echo -n "Введите имя файла: "
read -r file_name

if [[ -f "$file_name" ]]; then
    sed -i.bak 's/error/warning/g' "$file_name"
else
    echo "Ошибка: Файл $file_name не найден."
fi
