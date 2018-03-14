#!/bin/sh
# Set nice pointer cursor.
xsetroot -cursor_name plus -fg white -bg black
# Load resources.
xrdb -load ~/.Xresources
nitrogen --set-scaled /home/jack0da/Wallpapers/solar.png
# Start window manager in the background. If it dies, X still lives.
exec 2bwm &
exec polybar example &
exec polybar bar &
exec dunst
