#!/bin/bash

# Получаем директорию, в которой находится скрипт
script_dir=$(dirname "$0")

# Переходим в директорию скрипта
cd "$script_dir" || exit

# Очищаем файл перед записью
> readme.md

# Записываем тег начала кода Mermaid в файл
echo '```mermaid' >> readme.md

# Записываем заголовок графа в файл
echo "graph TD;" >> readme.md
echo "    Root[${script_dir}]" >> readme.md

# Рекурсивная функция для обхода директорий
traverse_directory() {
    local dir_path=$1
    local parent_id=$2

    # Обходим все элементы в директории
    for entry in "$dir_path"/*; do
        local entry_name=$(basename "$entry" | sed 's/ /_/g')
        if [ -d "$entry" ]; then
            echo "    ${parent_id} --> ${entry_name}" >> readme.md
            traverse_directory "$entry" "$entry_name"
        else
            echo "    ${parent_id} --> ${entry_name}" >> readme.md
        fi
    done
}

# Начинаем обход с текущей директории
traverse_directory "$script_dir" "Root"

# Записываем тег конца кода Mermaid в файл
echo '```' >> readme.md
