#!/bin/sh

echo "Initializing your Mac..."

# Copy the .zshrc from the dotfiles installation to the users home directory.
cp -i templates/.zshrc ~

# Copy .gitignore from the dotfiles installation to the uses home directory.
cp -i .gitignore ~

# Point to the global gitignore
git config --global core.excludesfile '~/.gitignore'
