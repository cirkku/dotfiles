#!/bin/bash

DIR=~/Pictures/Wallpapers/Cars
newpaper () {
	find "$DIR" -type f \( -name '*.jpg' -o -name '*.png' -o -name '*.jpeg' \) | shuf -n1
}

if feh --bg-fill $(newpaper) --bg-fill $(newpaper); then
	echo "changed wallpaper successfully"
else
	echo "wallpaper change failed"
fi
