#!/bin/bash
lspci | grep -i vga | awk -F ": " '{print $2}'
