#! /bin/bash

slstatus &
nitrogen --restore &
compton -CGb &
flashfocus &
xinput disable "pointer:ELAN0732:00 04F3:2537"
xinput set-prop "SynPS/2 Synaptics TouchPad" "libinput Tapping Enabled" 1
dunst

