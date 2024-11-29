#!/bin/bash

# Options for Rofi power menu
options="Shutdown \nReboot \nSuspend 鈴\nLogout \nLock Screen "

# Show Rofi power menu
selected_option=$(echo -e $options | rofi -dmenu -i -p "Power Menu" -width 20 -lines 4 -font "Hack 10" -padding 20 -hide-scrollbar -color-window "#2E3440, #2E3440, #2E3440" -color-normal "#2E3440, #D8DEE9, #2E3440, #2E3440, #D8DEE9" -color-active "#2E3440, #88C0D0, #2E3440, #2E3440, #88C0D0" -color-urgent "#2E3440, #BF616A, #2E3440, #2E3440, #BF616A")

# Handle selected option
case $selected_option in
    "Shutdown ")
        systemctl poweroff
        ;;
    "Reboot ")
        systemctl reboot
        ;;
    "Suspend 鈴")
        systemctl suspend
        ;;
    "Logout ")
        systemctl restart sddm
        ;;
    "Lock Screen ")
        ~/.config/hypr/scripts/LockScreen.sh
        ;;
esac
