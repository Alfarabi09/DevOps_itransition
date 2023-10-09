#!/bin/bash

file_path="~/my_file.txt"

if [[ -f $file_path ]]; then
    rm "$file_path"
    
    if [[ $? -eq 0 ]]; then
        echo "Файл успешно удален."
    else
        echo "При удалении файла произошла ошибка."
    fi
else
    echo "Файл $file_path не существует."
fi
