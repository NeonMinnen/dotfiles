#!/bin/sh

# start some nice programs

if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi

#xrandr --output DP-2 --mode 3440x1440 --rate 143.92 --pos 1440x685 --primary
#xrandr --output DP-0 --mode 2560x1440 --rate 143.86 --rotate right

export TERMINAL="st"
export LANG="en_US.UTF-8"
export LC_ALL="en_US.UTF-8"
export LANGUAGE="en_US.UTF-8"
export LC_CTYPE="en_US.UTF-8"

## Start GNOME Keyring
eval $(/usr/bin/gnome-keyring-daemon --start --components=pkcs11,secrets,ssh,gpg)
export SSH_AUTH_SOCK

xrdb -merge ~/.Xresources
xset r rate 200 50 & #sets key speed
nitrogen --restore & # this is to set an image background
picom -b & #picom
exec solaar --window hide & #Solaar for Mouse DPI Fix
dwmblocks & #exec dwmblocks
dunst & #exec dunst
# loop
while true; do
	dwm > /dev/null 2<&1
done
#Execute DWM
exec dwm

