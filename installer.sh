#!/bin/bash

echo "🚀 Запуск установщика Ridga для macOS..."
if ! command -v brew &> /dev/null; then
    echo "⏳ Homebrew не найден. Устанавливаем..."
    /bin/bash -c "$(curl -fsSL https://githubusercontent.com)"
else
    echo "✅ Homebrew уже установлен."
fi

SRC_URL="https://githubusercontent.com"
DEST_PATH="/usr/local/bin/Ridga"

echo "⏳ Установка компонентов..."
sudo curl -fsSL "$SRC_URL" -o "$DEST_PATH"
sudo chmod +x "$DEST_PATH"

echo "🎉 Готово! Теперь вы можете добавлять программы в apps.json на GitHub,"
echo "и они сразу будут доступны через команду: Ridga install имя"
