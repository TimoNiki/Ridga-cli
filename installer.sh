#!/bin/bash

echo "🚀 Starting ridga installer"

if ! command -v brew &> /dev/null; then
    echo "⏳ No homebrew on your mac. The program works without Homebrew, but applications listed in the Homebrew section cannot be installed."
    echo "if errors without homebrew send letter to timonikivopros.team@gmail.com"
else
    echo "✅ Homebrew installed on mac. And if it isn't installed, programs from the HOMEBREW list won't be able to install."
fi

SRC_URL="https://raw.githubusercontent.com/TimoNiki/Ridga-cli/refs/heads/main/Ridga"
VERIFY_SRC_URL="https://raw.githubusercontent.com/TimoNiki/Ridga-cli/refs/heads/main/Ridga_verify"

DEST_PATH="/usr/local/bin/Ridga"
VERIFY_DEST_PATH="/usr/local/bin/ridga_verify"

echo "⏳ Component Installing..."
sudo curl -fsSL "$SRC_URL" -o "$DEST_PATH"
sudo chmod +x "$DEST_PATH"

sudo curl -fsSL "$VERIFY_SRC_URL" -o "$VERIFY_DEST_PATH"
sudo chmod +x "$VERIFY_DEST_PATH"

echo "🎉 Ready! ridga installed on your mac."
