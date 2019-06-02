#!/bin/sh

case "$(echo -e "Laptop\nMonitor\nDuplicate\nMonitorDown\nMonitorUp" | dmenu \
    -fn "IBM 3270:size=14" \
    -nb "${COLOR_BACKGROUND:-#292d3e}" \
    -nb "${COLOR_BACKGROUND:-#292d3e}" \
    -nf "${COLOR_DEFAULT:-#eceff1}" \
    -sf "${COLOR_HIGHLIGHT:-#ffffff}" \
    -sb "#c792ea" \
    -i -p \
    "Display:" )" in
        Laptop) exec xrandr --output DP-1 --off --output eDP-1 --auto;;
        Monitor) exec xrandr --output DP-1 --auto --output eDP-1 --off;;
        Duplicate) exec xrandr --output DP-1 --auto --output eDP-1 --auto;;
        MonitorDown) exec xrandr --output DP-1 --auto --output eDP-1 --below DP-1;;
        MonitorUp) exec xrandr --output DP-1 --auto --output eDP-1 --above DP-1;;
esac

