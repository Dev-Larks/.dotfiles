#!/bin/sh

pacman -Sy 2> /dev/null
updatesarch="$(pacman -Qu  2> /dev/null | wc -l)"
#updatesaur="$(yay -Qum 2> /dev/null | wc -l)"
#updates=$(("$updatesarch" + "$updatesaur"))
updates=$updatesarch
printf " %s %s \\n" "$updates"
