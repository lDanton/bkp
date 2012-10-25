!/bin/bash

#Colours
blue="#b6848b"
grey="#c5c5c5"
red="#9693b5"

FONT="-*-cure-*-*-*-*-11-*-*-*-*-*-*-*"
XPOS=$(xdotool getmouselocation | awk -F " " '{print $1}' | cut -d ":" -f 2)
YPOS="20"
HEIGHT="15"
WIDTH="300"
LINES="13"
ALIGN="left"

totaldays=$(date +"%j")
totalweeks=$(date +"%U")
ti=$(date | awk -F " " '{print $4}')
calendar=$(cal -3)
timealivesecs=$(date -d 1995-02-07 +%s)
timealivedays=$(( $timealivesecs / 86400 ))

echo "^fg($blue)time/date"; echo "$calendar"; echo " "; echo "^fg($red)time: ^fg($grey)$ti"; echo "^fg($red)days: ^fg($grey)$totaldays"; echo "^fg($red)week: ^fg($grey)$totalweeks"; echo "uptime: ^fg($white)$timealivesecs seconds or $timealivedays days"; sleep 15 | dzen2 -bg "#2c3035" -fn $FONT -x $XPOS -y $YPOS -w $WIDTH -h $HEIGHT -ta $ALIGN -l $LINES -e 'onstart=uncollapse;button1=exit;button3=exit'
