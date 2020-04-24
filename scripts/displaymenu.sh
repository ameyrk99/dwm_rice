#!/bin/sh

case "$(echo -e "Laptop\nExternal\nDuplicate\nExtLeft\nExtRight" | dmenu -i -p \
    "Display:" )" in
        Laptop)
            xrandr --output DP1 --off
            xrandr --output eDP1 --auto
        ;;
        External)
            xrandr --output DP1 --auto
            xrandr --output eDP1 --off
        ;;
        Duplicate)
            xrandr --output DP1 --auto --output eDP1 --auto
        ;;
        ExtLeft)
            xrandr --output DP1 --auto --left-of eDP1 --primary
        ;;
        ExtRight)
            xrandr --output eDP1 --auto --left-of DP1 --primary
        ;;
esac

