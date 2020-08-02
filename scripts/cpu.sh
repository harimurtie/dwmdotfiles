#!/bin/bash
awk -F':' '/^model name/ {split($2, A, " @"); print A[1]; exit}' /proc/cpuinfo
