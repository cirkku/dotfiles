xrdb -merge ~/.Xresources
sxhkd &
sh .fehbg &
polybar -c .config/polybar/config cirno &
xautolock -time 10 -locker slock &
exec bspwm
