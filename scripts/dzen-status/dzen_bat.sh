#!/bin/bash

BG1="#3f3f3f"
BG2="#f9f9f9"
FG1="#c3c3c3"
FG2="#777777"

FONT="-*-cure-*-*-*-*-11-*-*-*-*-*-*-*"
XPOS=$(( $(xdotool getmouselocation | awk -F " " '{print $1}' | cut -d ":" -f 2) - 175 ))
YPOS="16"
HEIGHT="11"
WIDTH="233"
LINES="3"
ALIGN="center"

pwr="$(acpi)"

(echo 'bat'; echo ' '; echo "$pwr"; sleep 1) | dzen2 -bg $BG2 -fg $FG2 -fn $FONT -x $XPOS -y $YPOS -h $HEIGHT -w $WIDTH -sa $ALIGN -l $LINES -e 'onstart=uncollapse;button1=exit;button2=exit;button3=exit;button4=exit;button5=exit'
