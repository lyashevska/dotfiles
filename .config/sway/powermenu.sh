#!/bin/bash

chosen=$(printf " Lock\n Logout\n Reboot\n Shutdown" | wofi --dmenu --hide-scroll --prompt "Power" | awk '{print $2}')

case "$chosen" in
  Lock) swaylock -c 000000 ;;
  Logout) swaymsg exit ;;
  Reboot) systemctl reboot ;;
  Shutdown) systemctl poweroff ;;
esac

