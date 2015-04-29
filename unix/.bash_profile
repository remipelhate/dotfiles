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

# Global
# ---------
curl https://raw.githubusercontent.com/remipelhate/dotfiles/master/unix/.bash_aliases -o /tmp/.bash_aliases; source /tmp/.bash_aliases