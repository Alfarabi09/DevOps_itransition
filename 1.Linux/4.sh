#!/bin/bash

source_path="~/my_file.txt"

destination_path="/tmp/"

if [[ -f "$source_path" ]]; then
    cp "$source_path" "$destination_path"
    
    if [[ $? -eq 0 ]]; then
        echo "Файл успешно скопирован."
    else
        echo "При копировании файла произошла ошибка."
    fi
else
    echo "Файл $source_path не существует."
fi
