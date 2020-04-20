#!/bin/bash

VARIABLES=$(slop)

#notify-send $VARIABLES

SIZE=$(echo $VARIABLES | cut -d + -f 1)
POSITION_X=$(echo $VARIABLES | cut -d + -f 2)
POSITION_Y=$(echo $VARIABLES | cut -d + -f 3)
SIZE_X=$(echo $SIZE | cut -d x -f 1)
SIZE_Y=$(echo $SIZE | cut -d x -f 2)

#urxvt -title "floatme" -e zsh -c "~/.scripts/drawTerminal2.sh $SIZE_X $SIZE_Y $POSITION_X $POSITION_Y"

urxvt -title "floatme" -e zsh -c "i3-msg -q floating enable && i3-msg -q resize set $SIZE_X $SIZE_Y && i3-msg -q move position $POSITION_X $POSITION_Y && zsh"
