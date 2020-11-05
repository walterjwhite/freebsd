#!/usr/bin/env bash

_date=$(date +%Y-%m-%d_%H:%M:%S)

# -t 0: send a notification that will not expire
notify-send -t 0 "$(echo -e "$_date $1")"
