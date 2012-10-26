#!/bin/bash
#
FONT="-*-cure-*-*-*-*-11-*-*-*-*-*-*-*"
XPOS=$(( $(xdotool getmouselocation | awk -F " " '{print $1}' | cut -d ":" -f 2) - 165 ))
YPOS="20"
HEIGHT="11"
WIDTH="300"
LINES="6"
#ALIGN="left"

playing=$(mpc current)
artist=$(mpc current -f %artist%)
album=$(mpc current -f %album%)
ti=$(mpc current -f %time%)

(echo mpd; echo " "; echo "np: $playing"; echo "artist: $artist"; echo "album: $album"; echo "time: $ti"; sleep 1) | dzen2 -bg "#2c3035" -fn $FONT -x $XPOS -y $YPOS -w $WIDTH -h $HEIGHT -l $LINES -e 'onstart=uncollapse;button1=exit;button2=exit;button3=exit;button4=exit;button5=exit'
