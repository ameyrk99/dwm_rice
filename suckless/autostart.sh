#! /bin/bash

# picom -bf &
xcompmgr -c &
dunst &
xrdb ~/.Xresources
xinput disable "pointer:ELAN0732:00 04F3:2537"
xinput set-prop "SynPS/2 Synaptics TouchPad" "libinput Tapping Enabled" 1
~/.dotfiles/scripts/status.sh
# feh --bg-scale /home/mark/.dotfiles/wallpaper.png
~/.dotfiles/scripts/wallpaper.sh

