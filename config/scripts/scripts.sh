#!/bin/bash

cd ~/config/scripts/scripts
bash "$(ls -1 |
rofi -dmenu -i -p "Scripts")"
