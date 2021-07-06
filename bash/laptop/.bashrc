#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

# Ruby Paths for Jekyll
export GEM_HOME="$HOME/gems"
export PATH="$HOME/gems/bin:$PATH"
