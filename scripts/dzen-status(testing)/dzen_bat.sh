#!/bin/bash
#
FONT="-*-cure-*-*-*-*-11-*-*-*-*-*-*-*"
XPOS=$(xdotool getmouselocation | awk -F " " '{print $1}' | cut -d ":" -f 2)
YPOS="20"
HEIGHT="15"
WIDTH="150"
#LINES="2"
ALIGN="left"

# infos
pwr="$(acpi)"
(echo " $pwr"; sleep 10) | dzen2 -bg "#2c3035" -fn $FONT -x $XPOS -y $YPOS -h $HEIGHT -w $WIDTH -ta $ALIGN -e 'onstart=uncollapse;button1=exit;button3=exit'
