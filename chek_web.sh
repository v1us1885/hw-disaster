#!/bin/bash

# Адрес и порт веб-сервера для проверки
WEB_SERVER="10.129.0.100"
PORT=80

# Проверка доступности порта
nc -z "$WEB_SERVER" "$PORT" >/dev/null 2>&1

# Проверка наличия файла index.html в корневой директории веб-сервера
if [ $? -eq 0 ] && [ -e "/var/www/html/index.nginx-debian.html" ]; then
    exit 0  # Все в порядке
else
    exit 1  # Ошибка: порт недоступен или отсутствует файл index.html
fi