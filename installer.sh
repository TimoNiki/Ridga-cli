#!/bin/bash

echo "🚀 Запуск установщика Ridga для macOS..."

if ! command -v brew &> /dev/null; then
    echo "⏳ Homebrew не найден. Устанавливаем..."
    /bin/bash -c "$(curl -fsSL https://githubusercontent.com)"
else
    echo "✅ Homebrew уже установлен."
fi

SRC_URL="https://raw.githubusercontent.com/TimoNiki/Ridga-cli/refs/heads/main/Ridga"
VERIFY_SRC_URL="https://raw.githubusercontent.com/TimoNiki/Ridga-cli/refs/heads/main/Ridga_verify"

DEST_PATH="/usr/local/bin/Ridga"
VERIFY_DEST_PATH="/usr/local/bin/ridga_verify"

echo "⏳ Установка компонентов..."
sudo curl -fsSL "$SRC_URL" -o "$DEST_PATH"
sudo chmod +x "$DEST_PATH"

sudo curl -fsSL "$VERIFY_SRC_URL" -o "$VERIFY_DEST_PATH"
sudo chmod +x "$VERIFY_DEST_PATH"

echo "🎉 Готово! Компоненты установлены."
echo "Используйте команды:"
echo "  Ridga install имя_программы"
echo "  Ridga verify ПУТЬ_К_ПРОГРАММE.app"
