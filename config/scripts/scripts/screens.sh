#!/bin/bash
swaymsg output $(
echo "eDP-1
DP-1
DP-2" |
rofi -dmenu -i -p "Select output") $(
echo "res 1920x1080 scale 1
res 1920x1080@60Hz scale 1
res 3840x2160 scale 2
scale 1
scale 2" |
rofi -dmenu -i -p "Select option")
