#!/bin/sh

if pgrep -x "picom" > /dev/null
then
	killall picom &
    notify-send "picom OFF"
else
	picom --config ~/.config/picom.conf &
    notify-send "picom ON"
fi
