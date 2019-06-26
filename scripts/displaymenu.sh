#!/bin/sh

case "$(echo -e "Laptop\nMonitor\nDuplicate\nMonitorDown\nMonitorUp" | dmenu \
    -fn "Monofur:size=14" \
    -nb "${COLOR_BACKGROUND:-#f2e5bc}" \
    -nb "${COLOR_BACKGROUND:-#f2e5bc}" \
    -nf "${COLOR_DEFAULT:-#3c3836}" \
    -sf "${COLOR_HIGHLIGHT:-#f2e5bc}" \
    -sb "#458588" \
    -i -p \
    "Display:" )" in
        Laptop) exec xrandr --output DP-1 --off --output eDP-1 --auto;;
        Monitor) exec xrandr --output DP-1 --auto --output eDP-1 --off;;
        Duplicate) exec xrandr --output DP-1 --auto --output eDP-1 --auto;;
        MonitorDown) exec xrandr --output DP-1 --auto --output eDP-1 --below DP-1;;
        MonitorUp) exec xrandr --output DP-1 --auto --output eDP-1 --above DP-1;;
esac

