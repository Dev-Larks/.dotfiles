#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'

# Set prompt in Alacritty
PS1='[\u@\h \W]\$ '
export PS1="\[\e[1;33m\][\[\e[m\]\[\e[1;33m\]\u\[\e[m\]\[\e[1;33m\]]\[\e[m\]\[\e[1;34m\][\[\e[m\]\[\e[1;34m\]\w\[\e[m\]\[\e[1;34m\]]\[\e[m\]\[\e[1;31m\]-\[\e[m\]\[\e[1;31m\]>\[\e[m\] "

# Pacman and Paru aliases
alias pacup='sudo pacman -Syu --ignore ruby'
alias aurup='paru -Sua --upgrademenu'
alias cleanup='paru -Sc'

# Alias for pavucontrol
alias get-sound='pavucontrol'

# Manage libvirtd state
alias start-libvirt='systemctl start libvirtd'
alias stop-libvirt='systemctl stop --now libvirtd'

# Manage docker state
alias start-docker='systemctl start docker'
alias stop-docker='systemctl stop --now docker'

# Set Vagrant storage location
#export VAGRANT_HOME=/mnt/data/VMs

# Install Ruby Gems to ~/gems
export GEM_HOME="$(ruby -e 'puts Gem.user_dir')"
export PATH="$PATH:$GEM_HOME/bin"
