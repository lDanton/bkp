#!/bin/bash

#Colours
#blue="#b6848b"
#grey="#c5c5c5"
#red="#9693b5"

FONT="-*-cure-*-*-*-*-11-*-*-*-*-*-*-*"
XPOS=$(( $(xdotool getmouselocation | awk -F " " '{print $1}' | cut -d ":" -f 2) - 140 ))
YPOS="20"
HEIGHT="11"
WIDTH="125"
LINES="10"
#ALIGN="left"

ti=$(date | awk -F " " '{print $4}')
day=$(date +%D)
calendar=$(cal -1h)

(echo "date/time"; echo "$calendar"; echo "time: $ti"; echo "date: $day"; sleep 1) | dzen2 -bg "#2c3035" -fn $FONT -x $XPOS -y $YPOS -w $WIDTH -h $HEIGHT -l $LINES -e 'onstart=uncollapse;button1=exit;button2=exit;button3=exit;button4=exit;button5=exit'
