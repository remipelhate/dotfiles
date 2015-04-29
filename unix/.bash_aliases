# Notes
# ---------
# Some of these aliases require a symlink to subl. Check
# http://ashleynolan.co.uk/blog/launching-sublime-from-the-terminal
# for more info.

alias bp="sudo sublime ~/.bash_profile"
alias br="source ~/.bash_profile"

# Artisan
# ---------
alias seed="php artisan db:seed"
alias routes="php artisan routes"

function artisan() {
    if [[ $@ == "refresh" ]]; then
        command composer dump
        command php artisan clear-compiled
        command php artisan optimize
    else
        command php artisan "$@"
    fi
}

function migrate() {
    if [[ $@ == "refresh" ]]; then
        command php artisan migrate:refresh --seed
    else
        command php artisan migrate"$@"
    fi
}

# Directories
# -------------
alias ll="ls -lah" # List all, with human readable filesizes
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."

# General
# ---------
alias c="clear"

# Vagrant
# ---------
alias v="vagrant version && vagrant global-status"
alias vst="vagrant status"
alias vup="vagrant up"
alias vdo="vagrant halt"
alias vssh="vagrant ssh"
alias vkill="vagrant destroy"

# Virtual hosts
# ---------------
alias vhost="sudo sublime /etc/hosts"
