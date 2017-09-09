#!/bin/sh

BRIGHT=$1

if [[ $BRIGHT =~ ^inc|up$ ]]; then
	xbacklight +10%
fi

if [[ $BRIGHT =~ ^dec|down$ ]]; then
	xbacklight -10%
fi

CURRENT=$(printf "%.0f" $(xbacklight -get))
timeout 1 notify-send -t 10 -u low -h "int:value:${CURRENT}" -i video-display "背光亮度 ${CURRENT}%"
