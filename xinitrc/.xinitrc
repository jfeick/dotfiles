[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources
[[ -f ~/.Xmodmap ]] && xmodmap ~/.Xmodmap
# set screen off timeout to 12 minutes
xset dpms 720 720 720 &
xmodmap ~/.capslock_esc 
exec awesome >> ~/.cache/awesome/stdout 2>> ~/.cache/awesome/stderr
