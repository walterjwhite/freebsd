#!/usr/bin/env bash

# rebuild i3 configuration
cat $(find ~/.config/i3/configuration -type f) > ~/.config/i3/config

# this command below is used on gentoo/funtoo (but does not work on ubuntu, could be that dbus is not started)
#exec ck-launch-session dbus-launch --sh-syntax --exit-with-session i3 &

_cleanup() {
	rm -rf /tmp/i3-$USER.*
}

_trap _cleanup INT 0 1 2

# this works on ubuntu
xmodmap ~/.Xmodmap
[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources
exec i3 &

# ensure the xsession is already started
if [ -e /etc/xprofile ]
then
	find /etc/xprofile -type f | xargs -n 1 bash
fi

# wait for the i3 session to close (since we started it asynchronously)
wait
