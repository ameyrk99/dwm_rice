#! /bin/bash

slstatus &
nitrogen --restore &
compton -CGb &
xinput disable "pointer:ELAN0732:00 04F3:2537"
