#!/bin/sh

#Set my background
xwallpaper --center ~/usr/Images/dark-leaves.png

# Source my X colors
xrdb $HOME/sys/config/Xresources

#Run picom
picom -b -f

# Set the hostname to the current time
while true; do
   xsetroot -name "$( date +"  %R" )"
   sleep 1m    # Update time every minute
done &
