#!/bin/sh

#Set my background
feh --bg-scale --no-fehbg $HOME/usr/Images/japanese_white_washed_red_bridge.jpg

# Source my X colors
xrdb $HOME/sys/config/Xresources

#Run picom
picom -b -f

# Set the hostname to the current time
while true; do
   xsetroot -name "$( date +"%F %R" )"
   sleep 1m    # Update time every minute
done &
