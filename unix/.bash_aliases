# Notes
# ---------
# Some of these aliases require a symlink to subl. Check
# http://ashleynolan.co.uk/blog/launching-sublime-from-the-terminal
# for more info.

alias bash:profile="sudo sublime ~/.bash_profile"
alias bash:reload="source ~/.bash_profile"

# Artisan
# ----------
alias artisan="php artisan"
alias artisan:refresh="composer dump; php artisan clear-compiled; php artisan optimize"
alias migrate="php artisan migrate"
alias migrate:refresh="php artisan migrate:refresh --seed"
alias seed="php artisan db:seed"
alias routes="php artisan routes"

# Directories
# --------------
alias ll="ls -lah" # List all, with human readable filesizes
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."

# Vagrant
# ----------
alias v="vagrant version && vagrant global-status"
alias vst="vagrant status"
alias vup="vagrant up"
alias vdo="vagrant halt"
alias vssh="vagrant ssh"
alias vkill="vagrant destroy"

# Virtual hosts
# ---------------
alias vhost="sudo sublime /etc/hosts"
