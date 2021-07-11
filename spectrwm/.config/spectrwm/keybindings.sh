#!/bin/bash
bold=$(tput bold)
normal=$(tput sgr0)

RED='\033[0;31m'
GREEN='\033\[0;32m'
BLUE='\033\[0;34m'
PURPLE='\033\[0;35m'
YELLOW='\033\[0;33m'
NC='\033[0m'

printf ${RED}${bold}" ALT KEY BINDINGS\n"${NC}${normal} > bindings.txt

grep MOD1 ~/.spectrwm.conf | awk {'print $3 " --- " $1'} | sed 's/bind//g' | sed 's/[][]//g' >> bindings.txt

printf ${RED}${bold} " SUPER KEY BINDINGS\n"${NC}${normal} >> bindings.txt

grep ^bind ~/.spectrwm.conf | grep MOD+ | awk {'print $3 " --- " $1'} | sed 's/bind//g' | sed 's/[][]//g' | column >> bindings.txt

bat ~/.config/spectrwm/bindings.txt

read
