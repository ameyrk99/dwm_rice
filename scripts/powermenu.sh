#!/bin/sh

case "$(echo -e "Shutdown\nRestart\nLogout\nSuspend\nLock" | dmenu \
    -fn "Monofur:size=14" \
    -nb "${COLOR_BACKGROUND:-#f2e5bc}" \
    -nb "${COLOR_BACKGROUND:-#f2e5bc}" \
    -nf "${COLOR_DEFAULT:-#3c3836}" \
    -sf "${COLOR_HIGHLIGHT:-#f2e5bc}" \
    -sb "#458588" \
    -i -p \
    "Power:" )" in
        Shutdown) exec systemctl poweroff;;
        Restart) exec systemctl reboot;;
        Logout) kill -HUP $XDG_SESSION_PID;;
        Suspend) exec slock & systemctl suspend;;
        Lock) exec slock;;
esac

