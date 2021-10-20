xrdb -merge ~/.Xresources
systemctl --user start X.target &
sxhkd &
sh .fehbg &
xset s 915 915
exec bspwm
