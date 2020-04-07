#!/bin/sh

wget https://source.unsplash.com/random/ -O ~/newbg &&
rm ~/background && cp ~/newbg ~/background && rm ~/newbg

wal -c && wal --backend colorz -i ~/background
