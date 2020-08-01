#!/usr/bin/env bash

state=$(cat /sys/class/power_supply/BAT0/status)
if [ $state = "Charging" ]; then
        echo "" # charging
elif [ $state = "Discharging" ]; then
        echo "" # discharging
elif [ $state = "Full" ]; then
        echo "»" # idle
else
        echo " " # unknown
fi
