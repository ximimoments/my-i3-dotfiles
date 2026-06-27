#!/bin/bash

selection=$(echo -e "Shutdown\nReboot\nSuspend\nHibernate\nLog Out\nLock\nCancel" | rofi -dmenu -p "Power Menu")

case $selection in
    "Shutdown") 
        systemctl poweroff ;;
    "Reboot") 
        systemctl reboot ;;
    "Suspend") 
        systemctl suspend && i3lock --nofork ;;
    "Hibernate") 
        systemctl hibernate && i3lock --nofork ;;
    "Log Out") 
        i3-msg exit ;;
    "Lock") 
        i3lock ;;
    "Cancel") 
        exit 0 ;;
esac
