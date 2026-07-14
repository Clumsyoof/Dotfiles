#!/bin/sh
mako &
waybar &
nm-applet &
blueman-applet &
swaybg -i ~/Downloads/pilot_mountains_sonntag.jpg &
pipewire &
pipewire-pulse &
wireplumber &

export QT_QPA_PLATFORMTHEME=qt6ct
export XCURSOR_THEME=Adwaita
export XCURSOR_SIZE=24

swayidle -w \
    timeout 300 'swaylock -f' \
    timeout 600 'loginctl suspend' \
    before-sleep 'swaylock -f' &
