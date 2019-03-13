#!/bin/sh

case "$(echo -e "Shutdown\nRestart\nLogout\nSuspend\nLock" | dmenu \
    -fn "Monofur:size=12" \
    -nb "${COLOR_BACKGROUND:-#2a2e38}" \
    -nf "${COLOR_DEFAULT:-#e6e6e6}" \
    -sf "${COLOR_HIGHLIGHT:-#f0fdff}" \
    -sb "#6f98b3" \
    -i -p \
    "Power:" )" in
        Shutdown) exec systemctl poweroff;;
        Restart) exec systemctl reboot;;
        Logout) kill -HUP $XDG_SESSION_PID;;
        Suspend) exec slock & systemctl suspend;;
        Lock) exec slock;;
esac

