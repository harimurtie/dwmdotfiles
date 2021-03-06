#!/bin/bash

#https://bbs.archlinux.org/viewtopic.php?id=80145&p=7

# list running application, similar to dmenu-running-apps.sh

declare -i active_id
declare -i win_id

winlist=$(xprop -root _NET_CLIENT_LIST|cut -d "#" -f 2|tr "," " ")
count=$(echo $winlist|wc -w)
active_id=$(xprop -root _NET_ACTIVE_WINDOW|awk -F' ' '{ print $NF }')
foo=$(for i in $winlist; do
        win_id="${i}"
        if [ $win_id -eq $active_id ]; then
                focustag="*"
        else
                focustag=" "
        fi

        win_class=$(xprop -id ${win_id} WM_CLASS | cut -d'"' -f2)
        win_title=$(xprop -id ${win_id} WM_NAME | cut -d'=' -f2-)
        printf  "%10.10s${focustag}| %60.60s | 0x%7.7x\n" "${win_class}" "${win_title}" "${win_id}"
done |sort| dmenu -i -x 290 -y 300 -w 900 -l $count)


if [ $? -eq 0 ]; then
        xdotool windowactivate $(echo $foo | awk -F'|' '{ print $NF }')
fi

