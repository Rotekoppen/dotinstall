#!/bin/sh

function fullscreen() {
  scrot "/tmp/screenshot"
}

function window() {
  scrot -u "/tmp/screenshot"
}

function area() {
  scrot -s "/tmp/screenshot"
}

function save() {
  cp /tmp/screenshot ~/Screenshots/$(date -Iseconds).png
}

function copy() {
  xclip /tmp/screenshot
}

$1
$2

rm /tmp/screenshot -r
