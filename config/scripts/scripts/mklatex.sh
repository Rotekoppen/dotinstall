#!/bin/bash
cd /synced/

cp -r /synced/template /synced/\
$(ls -1 | rofi -dmenu -i -p "Where to create?" > /tmp/arg1; cat /tmp/arg1)/\
$(rofi -dmenu -i -p "What to call it?" > /tmp/arg2; cat /tmp/arg2)

cd $(cat /tmp/arg1)/$(cat /tmp/arg2)
mv main.tex $(cat /tmp/arg2).tex

atom ./
