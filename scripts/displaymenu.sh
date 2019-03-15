#!/bin/sh

case "$(echo -e "Laptop\nMonitor\nDuplicate\nMonitorRight\nMonitorLeft" | dmenu \
    -fn "Monofur:size=12" \
    -nb "${COLOR_BACKGROUND:-#292d3e}" \
    -nf "${COLOR_DEFAULT:-#eceff1}" \
    -sf "${COLOR_HIGHLIGHT:-#ffffff}" \
    -sb "#82aaff" \
    -i -p \
    "Display:" )" in
        Laptop) exec xrandr --output DP-1 --off --output eDP-1 --auto;;
        Monitor) exec xrandr --output DP-1 --auto --output eDP-1 --off;;
        Duplicate) exec xrandr --output DP-1 --auto --output eDP-1 --auto;;
        MonitorRight) exec xrandr --output DP-1 --auto --output eDP-1 --left-of DP-1;;
        MonitorLeft) exec xrandr --output DP-1 --auto --output eDP-1 --right-of DP-1;;
esac

