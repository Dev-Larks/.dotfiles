#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

#alias ls='ls --color=auto'
#test -r ~/.dir_colors && eval $(dircolors ~/.dir_colors)

# Set prompt in Alacritty
PS1='[\u@\h \W]\$ '
export PS1="\[\e[1;33m\][\[\e[m\]\[\e[1;33m\]\u\[\e[m\]\[\e[1;33m\]]\[\e[m\]\[\e[1;34m\][\[\e[m\]\[\e[1;34m\]\w\[\e[m\]\[\e[1;34m\]]\[\e[m\]\[\e[1;31m\]-\[\e[m\]\[\e[1;31m\]>\[\e[m\] "

# Use bash-completion, if available
[[ $PS1 && -f /usr/share/bash-completion/bash_completion ]] && \
    . /usr/share/bash-completion/bash_completion

# Dev_Larks terminal banner
DEV/colourscript.sh
cat $HOME/DEV/banner.txt
DEV/colourscript.sh

# Install Ruby Gems to ~/gems
export GEM_HOME="$(ruby -e 'puts Gem.user_dir')"
export PATH="$PATH:$GEM_HOME/bin"

# Set sudoedit default editor variable
export EDITOR="vim"

# Aliases for exa output for ls command
alias ls='exa --icons'
alias ll='exa -la'
alias la='exa -lah'

# Alias for disk usage check
alias disk='df -h'

# Alias for updates.sh script
alias checkupdates='sudo pacman -Sy'

# Pacman update management
alias pacup='sudo pacman -Syu --ignore ruby'
alias aurup='paru -Sua --upgrademenu'
alias cleancache='paru -Sc && paru -Sccd'
alias cleanorphans='pacman -Qtdq | sudo pacman -Rns'

# Git management
alias gs='git status'
alias ga='git add'
alias gc='git commit -m'
alias gpl='git pull'
alias gp='git push'
alias gd='git diff'

# Alias for managing git ssh access
alias ssha='eval $(ssh-agent) && ssh-add'

