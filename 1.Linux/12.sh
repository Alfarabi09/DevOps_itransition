#!/bin/bash

log_dir="/var/log"

matching_files=$(grep -rl "error" "$log_dir" 2>/dev/null)

if [[ -z "$matching_files" ]]; then
    echo "Файлы, содержащие 'error', не найдены в $log_dir."
else
    echo "Файлы, содержащие 'error', в $log_dir:"
    echo "$matching_files"
fi
