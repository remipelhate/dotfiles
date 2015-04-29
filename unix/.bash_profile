export PATH=~/.composer/vendor/bin:$PATH
export PATH=/usr/local/bin:$PATH

# Variables
# -----------
DEVDIR=~/Development/Personal
BSDIR=~/Development/Professional/Beatswitch

# Directories
# -------------
alias dev="cd $DEVDIR"

# Beatswitch
# ------------
function bs() {
    if [[ $@ == "up" ]]; then
        cd $BSDIR/web-app
        command vagrant up
        command vagrant ssh -- -t 'cd /vagrant; /bin/bash'
    else
        cd $BSDIR
    fi
}

# Load aliases
# --------------
if [ -f ~/.bash_galiases ]; then
    . ~/.bash_galiases
fi