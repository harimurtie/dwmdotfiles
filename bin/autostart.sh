#!/usr/bin/env bash


pkill -f "bash /usr/local/bin/dwmstatus"; /usr/local/bin/dwmstatus &
pkill -f "dunst"; dunst -config ~/.config/dunst/dunstrc &
xsetroot -solid "#1E1E1E"
pkill -f "bash /usr/bin/clipmenud"; pkill -f "clipnotify"; /usr/bin/clipmenud &
pkill -f "lxpolkit"; lxpolkit &
#pkill -f "jackdbus"; /home/damez/Documents/scripts/start-jack.sh &
pkill -f "mpd"; mpd &
pkill -f "unclutter"; unclutter &
pkill -f "xfce4-power-manager"; xfce4-power-manager &
#feh --bg-fill /home/damez/Pictures/wal/merahputih.jpg &
#conky -c /home/damez/Documents/scripts/conkyrc-03.lua &
