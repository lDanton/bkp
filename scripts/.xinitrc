sh ~/.fehbg &

xset +fp ~/.fonts
xset fp rehash
fc-cache

exec wmfs -C ~/.config/wmfs/wmfsrc-bright&

xcompmgr -c -t-6 -l-6 -r3 -o.5 &

~/scripts/status

done
