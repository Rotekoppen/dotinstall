#!/bin/bash
cpupower frequency-set $(
echo "-u 800MHz
-u 1GHz
-u 1.5GHz
-u 4GHz
-u 4.5GHz
-g powersave
-g performance
-g conservative
-g ondemand" |
rofi -dmenu -i -p "Select CPU mode")
