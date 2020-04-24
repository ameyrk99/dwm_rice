#!/bin/sh

case "$(echo -e "Suspend\nLock\nShutdown\nRestart" | dmenu -i -p \
    "Power:" )" in
        Suspend) exec slock systemctl suspend -i;;
        Lock) exec slock;;
        Shutdown) exec systemctl poweroff;;
        Restart) exec systemctl reboot;;
esac

