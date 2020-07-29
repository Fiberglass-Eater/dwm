#!/bin/sh

#Set my background
xwallpaper --center ~/usr/Images/beat-tape-31.png

# Source my X colors
xrdb $XDG_CONFIG_HOME/Xresources

#Run picom
picom -b -f

# Set the hostname to the current time
while true; do
   xsetroot -name "$( dwmblocks )"
   sleep 1s    # Update time every second
done &

#Turn on syncthing, my file syncer
syncthing -no-browser

#Multi monitor
xrandr --output DVI-D-0 --off --output HDMI-0 --mode 1920x1080 --pos 0x0 --rotate normal --output DP-0 --mode 1920x1080 --pos 1920x0 --rotate normal --output DP-1 --off

