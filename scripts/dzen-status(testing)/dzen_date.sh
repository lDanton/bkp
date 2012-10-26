#!/bin/bash

#Colours
#blue="#b6848b"
#grey="#c5c5c5"
#red="#9693b5"

FONT="-*-cure-*-*-*-*-11-*-*-*-*-*-*-*"
XPOS=$(( $(xdotool getmouselocation | awk -F " " '{print $1}' | cut -d ":" -f 2) - 150 ))
YPOS="20"
HEIGHT="11"
WIDTH="140"
LINES="11"
#ALIGN="left"

totaldays=$(date +"%j")
totalweeks=$(date +"%U")
ti=$(date | awk -F " " '{print $4}')
calendar=$(cal -1)
timealivesecs=$(date -d 1994-10-18 +%s)
timealivedays=$(( $timealivesecs / 86400 ))

(echo "time/date"; echo "$calendar"; echo "time: $ti"; echo "days: $totaldays"; echo "week: $totalweeks"; echo "lifetime: $timealivedays days"; sleep 1) | dzen2 -bg "#2c3035" -fn $FONT -x $XPOS -y $YPOS -w $WIDTH -h $HEIGHT -l $LINES -e 'onstart=uncollapse;button1=exit;button2=exit;button3=exit;button4=exit;button5=exit'
