#!/bin/bash

if [ $1 == 1 ]
then
    amixer -q -D pulse sset Master 5%+
    notify-send "VOL UP 5%"
elif [ $1 == -1 ]
then
    amixer -q -D pulse sset Master 5%-
    notify-send "VOL DOWN 5%"
else
    amixer -q sset Master toggle
    notify-send "VOL MUTE TOGGLE"
fi

