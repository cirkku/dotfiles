#!/bin/bash
#

chosen=$(echo -e "Cancel\nLogout\nShutdown\nReboot\nSuspend\nLock" | python $HOME/.config/scripts/dmenu/ultramenu.py -script)

if [[ $chosen = "Logout" ]]; then
	bspc quit && systemctl --user stop X.target
elif [[ $chosen = "Shutdown" ]]; then
	systemctl --user stop X.target && systemctl poweroff 
elif [[ $chosen = "Reboot" ]]; then
	systemctl --user stop X.target && systemctl reboot  
elif [[ $chosen = "Suspend" ]]; then
	sleep 0.1 && i3lock-fancy-rapid 5 3 -u && sleep 0.1 && systemctl suspend
elif [[ $chosen = "Lock" ]]; then
	sleep 0.1 && i3lock-fancy-rapid 5 3 -u
fi
