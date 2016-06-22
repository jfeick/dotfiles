[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources
[[ -f ~/.Xmodmap ]] && xmodmap ~/.Xmodmap
[[ -f /etc/profile/vte.sh ]] && source /etc/profile/vte.sh
# set screen off timeout to 12 minutes
xset dpms 720 720 720 &
exec awesome >> ~/.cache/awesome/stdout 2>> ~/.cache/awesome/stderr
