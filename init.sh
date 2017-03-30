#!/bin/sh

echo "Initializing your Mac..."

# Copy the .zshrc from the dotfiles installation to the users home directory.
cp -i templates/.zshrc ~

# Copy the .zprofile from the dotfiles installation to the users home directory.
cp -i templates/.zprofile ~

# Make ZSH the default shell environment
chsh -s $(which zsh)

# Copy .gitignore from the dotfiles installation to the uses home directory.
cp -i .gitignore ~
