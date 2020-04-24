#!/bin/sh
scrot 'Screenshot-%Y-%m-%d-%H_%M.png' -q 100 && mv /home/$USER/*.png /home/$USER/Pictures/Screenshots/
