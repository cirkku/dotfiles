#!/bin/bash
#

chosen=$(echo "Cancel\nLogout\nShutdown\nReboot\nSuspend\nLock" | dmenu)

if [[ $chosen = "Logout" ]]; then
	bspc quit
elif [[ $chosen = "Shutdown" ]]; then
	sudo poweroff 
elif [[ $chosen = "Reboot" ]]; then
	sudo reboot  
elif [[ $chosen = "Suspend" ]]; then
	sleep 0.1 && i3lock-fancy 5 3 -u && sleep 0.1 && sudo zzz
elif [[ $chosen = "Lock" ]]; then
	sleep 0.1 && i3lock-fancy 5 3 -u
fi
