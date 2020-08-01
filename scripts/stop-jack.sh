#!/bin/bash
#
pkill carla &&
jack_control stop &&

echo "STOPPED AT $(date)" >> /home/damez/.jack-status
