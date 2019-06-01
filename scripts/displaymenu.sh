#!/bin/sh

case "$(echo -e "Laptop\nMonitor\nDuplicate\nMonitorRight\nMonitorLeft" | dmenu \
    -fn "IBM 3270:size=14" \
    -nb "${COLOR_BACKGROUND:-#292d3e}" \
    -nb "${COLOR_BACKGROUND:-#292d3e}" \
    -nf "${COLOR_DEFAULT:-#eceff1}" \
    -sf "${COLOR_HIGHLIGHT:-#ffffff}" \
    -sb "#c3e88d" \
    -i -p \
    "Display:" )" in
        Laptop) exec xrandr --output DP-1 --off --output eDP-1 --auto;;
        Monitor) exec xrandr --output DP-1 --auto --output eDP-1 --off;;
        Duplicate) exec xrandr --output DP-1 --auto --output eDP-1 --auto;;
        MonitorRight) exec xrandr --output DP-1 --auto --output eDP-1 --left-of DP-1;;
        MonitorLeft) exec xrandr --output DP-1 --auto --output eDP-1 --right-of DP-1;;
esac

