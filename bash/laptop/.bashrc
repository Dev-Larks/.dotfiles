#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'

# Set prompt in Alacritty
PS1='[\u@\h \W]\$ '
export PS1="\[\e[1;33m\][\[\e[m\]\[\e[1;33m\]\u\[\e[m\]\[\e[1;33m\]]\[\e[m\]\[\e[1;34m\][\[\e[m\]\[\e[1;34m\]\w\[\e[m\]\[\e[1;34m\]]\[\e[m\]\[\e[1;31m\]-\[\e[m\]\[\e[1;31m\]>\[\e[m\] "

# Install Ruby Gems to ~/gems
export GEM_HOME="$(ruby -e 'puts Gem.user_dir')"
export PATH="$PATH:$GEM_HOME/bin"
