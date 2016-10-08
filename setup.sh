#!/bin/sh

function fireSetupProcedure() {
    echo "Setting up your Mac..."

    # Check for Homebrew and install it if it isn't already
    if test ! $(which brew); then
        /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
    fi

    # Update Homebrew recipes
    brew update

    # Install all our dependencies with bundle (See Brewfile)
    brew tap homebrew/bundle
    brew bundle

    # Make ZSH the default shell environment
    chsh -s $(which zsh)

    # Install Composer
    curl -sS https://getcomposer.org/installer | php
    mv composer.phar /usr/local/bin/composer

    # Install global Composer packages
    /usr/local/bin/composer global require laravel/installer laravel/lumen-installer
}

# Prevent the setup procedure from being fired accidentally.
case $1 in
    "-f" | "--force")
        fireSetupProcedure ;;
    *)
        read -p "This may overwrite existing files in your home directory. Are you sure? (y/n) " -n 1
        echo ""

        if [[ $REPLY =~ ^[Yy]$ ]]; then
            fireSetupProcedure
        else
            echo "Setting up your Mac was cancelled!"
        fi
esac

unset fireSetupProcedure;
