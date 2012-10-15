#conky | dzen2 -fg '#bbbbbb' -bg '#000000' -ta r -fn "-*-profont-*-*-12-*-*-*-*-*-*-*-"

#feh --bg-fill /home/diavorian/wallpapers/uncategorized/1337754152595
sh ~/.fehbg &

xset +fp ~/.fonts
xset fp rehash
fc-cache

#exec ~/scripts/dwm-launch
#exec openbox-session
exec wmfs -C ~/.config/wmfs/wmfsrc-bright&

xcompmgr -c -t-6 -l-6 -r3 -o.5 &

~/scripts/status

done
