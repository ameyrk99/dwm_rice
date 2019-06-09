#!/bin/sh

case "$(echo -e "Shutdown\nRestart\nLogout\nSuspend\nLock" | dmenu \
    -fn "IBM 3270:size=14" \
    -nb "${COLOR_BACKGROUND:-#292d3e}" \
    -nf "${COLOR_DEFAULT:-#eceff1}" \
    -sf "${COLOR_HIGHLIGHT:-#292d3e}" \
    -sb "#c3e88d" \
    -i -p \
    "Power:" )" in
        Shutdown) exec systemctl poweroff;;
        Restart) exec systemctl reboot;;
        Logout) kill -HUP $XDG_SESSION_PID;;
        Suspend) exec slock & systemctl suspend;;
        Lock) exec slock;;
esac

