#!/bin/bash
lspci | grep -i Network | awk -F ": " '{print $2}'
