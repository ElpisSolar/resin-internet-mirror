#!/bin/bash
set -euo pipefail
. /etc/environment

ip addr add $WLAN_ADDRESS/$WLAN_NETMASK dev wlan0

export DHCP_RANGE=$DHCP_RANGE
exec s6-svscan /etc/service
