source /usr/share/cachyos-fish-config/cachyos-config.fish

# Git management
alias gs='git status'
alias ga='git add'
alias gc='git commit -m'
alias gpl='git pull'
alias gp='git push'
alias gd='git diff'

# Alias for managing git ssh access
alias ssha='eval $(ssh-agent) && ssh-add'

# overwrite greeting
# potentially disabling fastfetch
#function fish_greeting
#    # smth smth
#end
