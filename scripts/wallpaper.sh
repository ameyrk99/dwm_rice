#!/bin/bash

# If the argument is file, cp to right loc and update wallpaper
[ -f "$1" ] && cp "$1" ~/.dotfiles/wallpaper.png && notify-send "Wallpaper changed"

# If the argument is dir, random select one file (png/jpg), cp to right loc and update the wallpaper
[ -d "$1" ] && cp "$(find $1 -name "*.png" -o -name "*jpg" -type f | shuf -n 1)" ~/.dotfiles/wallpaper.png && notify-send "Wallpaper changed"

feh --bg-fill ~/.dotfiles/wallpaper.png

