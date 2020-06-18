#!/bin/sh
cd /tmp
rm background
rm ~/background
wget https://source.unsplash.com/random/ -O background
if [ -s background ]; then
  echo OK
  cp background "/synced/Bakgrunner/$(pwgen 128 1)"
else
  echo Using previous
  rm background
  cp /synced/Bakgrunner/$(ls -1 /synced/Bakgrunner/ | shuf -n 1) background
fi
cp background ~/background

wal -c && wal --backend colorz -i ~/background -b "#000000"
