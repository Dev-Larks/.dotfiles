#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

#alias ls='ls --color=auto'
#test -r ~/.dir_colors && eval $(dircolors ~/.dir_colors)

# Aliases for exa output for ls command
alias ls='exa'
alias ll='exa -la'
alias la='exa -lah'

# Alias for disk usage check
alias disk='df -h'

# Alias for updates.sh script
alias checkupdates='sudo pacman -Sy'

# Set prompt in Alacritty
PS1='[\u@\h \W]\$ '
export PS1="\[\e[1;33m\][\[\e[m\]\[\e[1;33m\]\u\[\e[m\]\[\e[1;33m\]]\[\e[m\]\[\e[1;34m\][\[\e[m\]\[\e[1;34m\]\w\[\e[m\]\[\e[1;34m\]]\[\e[m\]\[\e[1;31m\]-\[\e[m\]\[\e[1;31m\]>\[\e[m\] "

# Dev_Larks terminal banner
DEV/colourscript.sh
cat $HOME/DEV/banner.txt
DEV/colourscript.sh

# Install Ruby Gems to ~/gems
export GEM_HOME="$(ruby -e 'puts Gem.user_dir')"
export PATH="$PATH:$GEM_HOME/bin"
