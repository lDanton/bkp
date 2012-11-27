#!/bin/bash

BG1="#3f3f3f"
BG2="#f9f9f9"
FG1="#c3c3c3"
FG2="#777777"

FONT="-*-cure-*-*-*-*-11-*-*-*-*-*-*-*"
YPOS="16"

if [ $(( $(xdotool getmouselocation | awk -F " " '{print $2}' | cut -d ":" -f 2) < $YPOS )) ]; then
	XPOS="1237"
else
        XPOS=$(( $(xdotool getmouselocation | awk -F " " '{print $1}' | cut -d ":" -f 2) - 130 ))
fi

HEIGHT="11"
WIDTH="125"
LINES="10"
#ALIGN="left"

ti=$(date | awk -F " " '{print $4}')
day=$(date +%D)
calendar=$(cal -1h)

(echo "date/time"; echo "$calendar"; echo "time: $ti"; echo "date: $day"; sleep 1.5) | dzen2 -bg $BG2 -fg $FG2 -fn $FONT -x $XPOS -y $YPOS -w $WIDTH -h $HEIGHT -l $LINES -e 'onstart=uncollapse;button1=exit;button2=exit;button3=exit;button4=exit;button5=exit'
