#!/bin/bash

# 🔧 Ensure Homebrew is installed
if ! command -v brew &> /dev/null; then
    echo "🍺 Homebrew not found! Installing Homebrew..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
else
    echo "✅ Homebrew is already installed. Skipping installation."
fi

# 📥 Install essential applications
echo "📦 Installing essential applications..."
APPS=(
    "google-chrome"
    "notion"
    "telegram"
    "spotify"
    "zalo"
    "messenger"
)

for APP in "${APPS[@]}"; do
    if brew list --cask "$APP" &>/dev/null; then
        echo "✔️ $APP is already installed. Skipping."
    else
        echo "⬇️ Installing $APP..."
        brew install --cask "$APP"
    fi
done

echo "🎉 Onboarding completed successfully! Enjoy your new setup!"
