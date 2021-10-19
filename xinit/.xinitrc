xrdb -merge ~/.Xinitrc
systemctl --user start X.target &
sxhkd &
sh .fehbg &
xset s 915 915
exec bspwm
