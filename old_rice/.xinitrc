#! /bin/bash

exec dwm
# exec startkde

# export XDG_CURRENT_DESKTOP=Budgie:GNOME
# exec budgie-desktop

# print_bat(){
#     hash acpi || return 0
#     charge="$(awk '{ sum += $1 } END { print sum }' /sys/class/power_supply/BAT*/capacity)"
#     echo -e "${charge}"
# }
#
# print_date(){
#     date "+%a %m-%d %T%:::z"
# }
#
# print_updates(){
#     echo -e "$(checkupdates | wc -l)"
# }
#
# while true
# do
#     xsetroot -name "$(print_updates) | $(print_bat) | $(print_date) "
#     sleep 1m
# done
