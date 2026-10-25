#!/bin/sh
IFACE=$(ip a show tun0 2>/dev/null | grep -w "inet" | awk '{print $2}' | cut -d'/' -f1)
if [ -n "$IFACE" ]; then
    echo "<span color='#9fef00'>󰇧  </span><span color='#ffffff'>$IFACE</span>"
else
    IP=$(ip a show enp12s0 2>/dev/null | grep -w "inet" | awk '{print $2}' | cut -d'/' -f1)
    if [ -n "$IP" ]; then
        echo "<span color='#2495e7'>󰈀  </span><span color='#ffffff'>$IP</span>"
    else
        echo "<span color='#504945'>󰖪  Disconnected</span>"
    fi
fi
