#!/bin/sh
#
# ~/.xinitrc
#
# Executed by startx (run your window manager from here)

if [ -d /etc/X11/xinit/xinitrc.d ]; then
  for f in /etc/X11/xinit/xinitrc.d/*; do
    [ -x "$f" ] && . "$f"
  done
  unset f
fi

# Here Awesome is kept as default
session=${1:-awesome}

case $session in
        i3) exec i3;;
        # No known session, try to run it as command
        *) exec $1;;                
esac
