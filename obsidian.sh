#!/bin/bash

# Проверяем, запущен ли Obsidian
if pgrep -x "obsidian" > /dev/null
then
    # Если запущен, переводим фокус на его окно с помощью wmctrl
    if wmctrl -a "Obsidian"; then
        echo "Obsidian уже запущен, окно активировано."
    else
        echo "Окно Obsidian не найдено."
    fi
else
    # Если не запущен, то запускаем его
    flatpak run md.obsidian.Obsidian
fi
