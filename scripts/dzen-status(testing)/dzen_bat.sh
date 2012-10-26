#!/bin/bash
#
FONT="-*-cure-*-*-*-*-11-*-*-*-*-*-*-*"
XPOS=$(( $(xdotool getmouselocation | awk -F " " '{print $1}' | cut -d ":" -f 2) - 175 ))
YPOS="16"
HEIGHT="30"
WIDTH="233"
#LINES="10"
#ALIGN=""

# infos
pwr="$(acpi)"

(echo "$pwr"; sleep 1) | dzen2 -bg "#2c3035" -fn $FONT -x $XPOS -y $YPOS -h $HEIGHT -w $WIDTH -e 'onstart=uncollapse;button1=exit;button2=exit;button3=exit;button4=exit;button5=exit'
