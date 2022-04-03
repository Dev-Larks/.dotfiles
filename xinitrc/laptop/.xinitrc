#!/bin/sh
#
#~/.xinitrc
#
# Executed by startx (run your window manager from here)

if [ -d /etc/X11/xinit/xinitrc.d ]; then
   for f in /etc/X11/xinit/xinitrc.d/*; do
     [ -x "$f" ] && . "$f"
   done
   unset f
fi

# Configure screens
~/.screenlayout/screenConfig.sh

# Start picom as background process
picom -b

# launch LeftWM
#exec dbus-launch leftwm

# launch dwm bar
#~/Dev/suckless/dwmscripts/dwmbar.sh
autostart.sh 

# set wallpaper
~/.fehbg &

# launch dwm
exec dwm
