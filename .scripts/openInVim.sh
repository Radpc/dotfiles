#!/bin/bash
xdotool keyup v
xdotool keyup Super_L
xdotool keyup Shift_L
xdotool getactivewindow key ctrl+c

urxvt -e sh -c "$HOME/.scripts/openInVim2.sh $(xclip -out -sel clip)"

