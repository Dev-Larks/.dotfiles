# .bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'

# Set prompt in Alacritty
PS1='[\u@\h \W]\$ '
export PS1="\[\e[1;33m\][\[\e[m\]\[\e[1;33m\]\u\[\e[m\]\[\e[1;33m\]]\[\e[m\]\[\e[1;34m\][\[\e[m\]\[\e[1;34m\]\w\[\e[m\]\[\e[1;34m\]]\[\e[m\]\[\e[1;31m\]-\[\e[m\]\[\e[1;31m\]>\[\e[m\] "

alias Set-LANDown='sudo ip link set enp60s0u1u1 down'
alias Set-LANUp='sudo ip link set enp60s0u1u1 up'

alias Set-VolumeUp='amixer set Master 10%+'
alias Set-VolumeDown='amixer set Master 10%-'
alias Mute-Audio='amixer -q sset Master toggle'
