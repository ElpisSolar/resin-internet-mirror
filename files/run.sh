#!/bin/bash
set -euo pipefail

# FIXME: Move dhcp range here
WLAN_ADDRESS=10.10.0.1
WLAN_NETMASK=22

ip addr show wlan0 | grep "$WLAN_ADDRESS" \
  || ip addr add $WLAN_ADDRESS/$WLAN_NETMASK dev wlan0

exec s6-svscan /etc/service
