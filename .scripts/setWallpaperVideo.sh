#!/bin/sh

VIDEO_PATH=$1
RESOLUTION='1366x768'

xwinwrap -ov -g $RESOLUTION+0+0 -- mpv -wid WID $VIDEO_PATH --no-osc --no-osd-bar --loop-file --player-operation-mode=cplayer --no-audio --panscan=1.0 --no-input-default-bindings
