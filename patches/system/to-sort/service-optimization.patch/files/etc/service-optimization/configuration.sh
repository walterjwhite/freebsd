#!/usr/bin/env bash

declare -A _SERVICES
declare -A _HOSTS

_SERVICES['zfs']="zfs-import zfs-mount zfs-share zfs-zed"
_SERVICES['ups']="upsdrv upsd upsmon"
_SERVICES['dmcrypt']="dmcrypt"

_HOSTS['zfs']="ddw2"
_HOSTS['ups']="ddw2"
_HOSTS['dmcrypt']="ddw2"

declare -A _HOST_SERVICES
_HOST_SERVICES['ddw2']="zfs ups dmcrypt"
