# .bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'

# Set prompt in Alacritty
PS1='[\u@\h \W]\$ '
export PS1="\[\e[1;33m\][\[\e[m\]\[\e[1;33m\]\u\[\e[m\]\[\e[1;33m\]]\[\e[m\]\[\e[1;34m\][\[\e[m\]\[\e[1;34m\]\w\[\e[m\]\[\e[1;34m\]]\[\e[m\]\[\e[1;31m\]-\[\e[m\]\[\e[1;31m\]>\[\e[m\] "

# Aliases for exa output for ls command
alias ls='exa --icons'
alias ll='exa -la'
alias la='exa -lah'

# Alias for managing git ssh access
alias ssha='eval $(ssh-agent) && ssh-add'

# Git management
alias gs='git status'
alias ga='git add'
alias gc='git commit -m'
alias gpl='git pull'
alias gp='git push'
alias gd='git diff'

# Aliases for managing hardware
alias set-LANdown='sudo ip link set enp60s0u1u1 down'
alias set-LANup='sudo ip link set enp60s0u1u1 up'

alias set-volumeup='amixer set Master 10%+'
alias set-volumedown='amixer set Master 10%-'
alias mute-audio='amixer -q sset Master toggle'

# Aliases for managing onedrive
alias onedrive-up='onedrive --synchronize --local-first'
alias onedrive-down='onedrive --synchronize --download-only'
