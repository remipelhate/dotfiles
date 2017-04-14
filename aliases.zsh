# Reload the shell (i.e. invoke as a login shell)
alias reload="exec $SHELL -l"

# Navigation --------------------------------------------------------
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias df="cd $DOTFILES"

## Prevent some custom executables from being ran in a subshell
alias dev="source dev"
alias bs="source bs"
alias dimg="source dimg"

# Listing -----------------------------------------------------------
alias ls="ls -G"
alias lsl="ls -Gl"

## List all, with human readable filesizes
alias lal="ls -Glah"

## List only directories
alias lsd="ls -lF ${colorflag} | grep --color=never '^d'"

# Development -------------------------------------------------------
alias vhost="subl /etc/hosts"

## Vagrant
alias v="vagrant version && vagrant global-status"
alias vst="vagrant status"
alias vgst="vagrant global-status"
alias vup="vagrant up"
alias vdo="vagrant halt"
alias vssh="vagrant ssh"
alias vkill="vagrant destroy"
alias vboot="vagrant up && vagrant ssh"
alias vrebuild="vagrant destroy --force && vagrant up"

# Utilities  --------------------------------------------------------
alias weather="curl -4 http://wttr.in"

## Get macOS Software Updates, and update installed Ruby gems, Homebrew, npm, and their installed packages
alias update='sudo softwareupdate -i -a; brew update; brew upgrade; brew cleanup; npm update npm -g; npm update -g; sudo gem update --system; sudo gem update'

## Flush Directory Service cache
alias flush="dscacheutil -flushcache && killall -HUP mDNSResponder"

## Merge PDF files
## Usage: `mergepdf -o output.pdf input{1,2,3}.pdf`
alias mergepdf='/System/Library/Automator/Combine\ PDF\ Pages.action/Contents/Resources/join.py'

## Show/hide hidden files in Finder
alias show="defaults write com.apple.finder AppleShowAllFiles -bool true && killall Finder"
alias hide="defaults write com.apple.finder AppleShowAllFiles -bool false && killall Finder"
