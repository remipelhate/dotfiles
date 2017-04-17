#!/bin/sh

echo "Initializing your Mac..."

# Make ZSH the default shell environment
chsh -s $(which zsh)

cp -i templates/.zshrc ~
cp -i .gitignore ~

# Remove the “Last login” Message (MOTD) from the Terminal
# @see http://osxdaily.com/2010/06/22/remove-the-last-login-message-from-the-terminal/
touch ~/.hushlogin

# Point to the global gitignore
git config --global core.excludesfile '~/.gitignore'
