#!/bin/bash
#
pkill carla &&
pkill jackdbus &&
jack_control stop &&

echo "STOPPED AT $(date)" >> /home/damez/.jack-status
