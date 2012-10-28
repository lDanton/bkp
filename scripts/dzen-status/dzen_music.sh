#!/bin/bash
#
FONT="-*-cure-*-*-*-*-11-*-*-*-*-*-*-*"
XPOS=$(( $(xdotool getmouselocation | awk -F " " '{print $1}' | cut -d ":" -f 2) - 165 ))
YPOS="20"
HEIGHT="11"
HEIGHT2="11"
WIDTH="260"
WIDTH2=220
LINES="6"
LINES2="3"
ALIGN="center"

if [ "`mpc 2>&1 | wc -l`" -gt "1" ]; then
   if [ "`mpc | grep "^\[paused\]"`" != "" ]; then
        np="`mpc current` (paused)"
   else
	np=`mpc current`
   fi
   artist=`mpc current -f %artist%`
   album=`mpc current -f %album%`
   ti=`mpc current -f %time%`
   
   (echo mpd; echo " "; echo "np: $np"; echo "artist: $artist"; echo "album: $album"; echo "time: $ti"; sleep 1) | dzen2 -bg "#2c3035" -fn $FONT -x $XPOS -y $YPOS -w $WIDTH -h $HEIGHT -l $LINES -e 'onstart=uncollapse;button1=exit;button2=exit;button3=exit;button4=exit;button5=exit'
else
   (echo mpd; echo " "; echo "not playing anything."; sleep 1) | dzen2 -bg "#2c3035" -fn $FONT -x $XPOS -y $YPOS -w $WIDTH2 -h $HEIGHT2 -l $LINES2 -ta $ALIGN -sa $ALIGN -e 'onstart=uncollapse;button1=exit;button2=exit;button3=exit;button4=exit;button5=exit'
fi
