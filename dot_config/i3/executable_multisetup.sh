#! /bin/bash

xrandr --output HDMI-1-3 --auto --output eDP-1 --auto --left-of HDMI-1-3

wallpaper="/home/arc/Wallpapers/patterns/emojis.png"

feh --bg-scale "$wallpaper" --bg-scale "$wallpaper"
