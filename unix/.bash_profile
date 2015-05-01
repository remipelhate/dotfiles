export PATH=~/.composer/vendor/bin:$PATH
export PATH=/usr/local/bin:$PATH

# Variables
# -----------
HOMESTEAD_DIR=~/Homestead
DEV_DIR=~/Development/Personal
LUM_DIR=~/Development/Professional/Luminol
BS_DIR=~/Development/Professional/Beatswitch

# Beatswitch
# ------------
function bs() {
    if [[ $@ == "up" ]]; then
        cd $BS_DIR/web-app
        command vagrant up
        command vagrant ssh -- -t 'cd /vagrant; /bin/bash'
    elif [[ $@ == "down" ]]; then
    	command vagrant halt
    else
        cd $BS_DIR
    fi
}

# Luminol
# ---------
function lum() {
	if [[ $1 == "up" ]]; then
		command homestead up
		command homestead ssh
		if [[ $2 == "pers" ]]; then
			cd /Dev/Personal
		else
			cd /Dev/Luminol
		fi
	elif [[ $1 == "down" ]]; then
		command homestead halt
	else
		cd $LUM_DIR
	fi
}

# Load aliases
# --------------
if [ -f ~/.bash_galiases ]; then
	. ~/.bash_galiases
fi