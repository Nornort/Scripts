#!/bin/bash
#Syntax: ./xrand.sh [output] [horizontal] [vertical]
COMPLETE="$(cvt $2 $3)"
RESOL="$(echo "$COMPLETE" | grep -o \".*\")"
COMPLETE="$(echo "$COMPLETE" | grep -o \".*$)"
xrandr --newmode $COMPLETE
xrandr --addmode $1 $RESOL
xrandr --output $1 --mode $RESOL
