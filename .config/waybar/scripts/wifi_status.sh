#!/bin/bash

trap '' PIPE

IFACE=$(nmcli device | awk '/wifi/ {print $1}')
INFO=$(nmcli -t -f active,ssid,signal dev wifi | grep '^yes' | head -n1)

if [ -z "$INFO" ]; then
    echo "📡 Disconnected"
else
    SSID=$(echo "$INFO" | cut -d: -f2)
    SIGNAL=$(echo "$INFO" | cut -d: -f3)
    echo "📶 $SSID ($SIGNAL%)"
fi

