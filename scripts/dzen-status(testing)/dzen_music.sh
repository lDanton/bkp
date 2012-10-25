#!/bin/bash

#Colours
blue="#b6848b"
grey="#c5c5c5"
red="9693b5"

FONT="-*-cure-*-*-*-*-11-*-*-*-*-*-*-*"
#XPOS="1000"
XPOS=$(xdotool getmouselocation | awk -F " " '{print $1}' | cut -d ":" -f 2)
#echo "$xposa $xposb $xposc $XPOS"
YPOS="20"
HEIGHT="15"
WIDTH="300"
LINES="4"
ALIGN="left"

playing=$(mpc current)
#playlistcurrent=$(mpc playlist | grep -n "$playing" | cut -d ":" -f 1)
#nextnum=$(( $playlistcurrent + 1 ))
#prevnum=$(( $playlistcurrent - 1 ))
artist=$(mpc -f %artist%)
album=$(mpc -f %album%)
ti=$(mpc -f %time%)

echo "^fg($blue)mpd"; echo "^fg($red)np: ^fg($grey)$playing"; echo "^fg($red)artist: ^fg($grey)$artist"; echo "^fg($red)album: ^fg($grey)$album"; echo "^fg($red)time: ^fg($grey)$ti" | dzen2 -bg "#2c3035" -fn $FONT -x $XPOS -y $YPOS -w $WIDTH -l -h $HEIGHT -ta $ALIGN $LINES -e 'onstart=uncollapse;button1=exit;button3=exit'
