#!/bin/bash

# options to be displayed
option0="Full Screen"
option1="Select Area"
option2="Delay"
option3="Full Screen prompt for filename"
option4="Select Area prompt for filename"
option5="Delay and prompt for filename"
# options to be displayed
options="$option0\n$option1\n$option2\n$option3\n$option4\n$option5"

selected="$(echo -e "$options" | rofi -lines 4 -dmenu -p "scrot")"
case $selected in
    $option0)
        scrot -a 0,0,1920,1080 $f ~/pictures/'screenshot from %Y-%m-%d-%H:%M:%S.png';;
    $option1)
        scrot -s $f ~/pictures/'screenshot from %Y-%m-%d-%H:%M:%S.png';;
    $option2)
        scrot -s -d b5 -c $f ~/pictures/'screenshot from %Y-%m-%d-%H:%M:%S.png';;
    $option3)
        read -p "Give the screenshot a name: " filename
        scrot -a 0,0,1920,1080 $f ~/pictures/$filename.png;;
    $option4)
        read -p "Give the screenshot a name: " filename
        scrot -s $f ~/pictures/$filename.png;;
    $option5)
        read -p "Give the screenshot a name: " filename
        scrot -s -d b5 -c $f ~/pictures/$filename.png;;
esac
