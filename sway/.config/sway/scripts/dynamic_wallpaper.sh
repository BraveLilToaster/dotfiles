#!/bin/sh
# Source: https://sylvaindurand.org/dynamic-wallpapers-with-sway/

WALLPAPER_DIR=~/Pictures/Wallpapers

swaybg -i $(find $WALLPAPER_DIR -type f | shuf -n1)
OLD_PID=$!

while true; do
  sleep 600
  swaybg -i $(find $WALLPAPER_DIR -type f | shuf -n1)
  NEXT_PID=$!
  sleep 5
  kill $OLD_PID
  OLD_PID=$NEXT_PID
done
