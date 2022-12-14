#!/bin/sh

# Resolution config
# xrandr --output eDP1 --primary --mode 1920x1080 --pos 0x0 --rotate normal --output DP2 --off --output HDMI2 --off --output VIRTUAL1 --off
xrandr --output eDP1 --primary --mode 1920x1080 --pos 0x0 --rotate normal --output DP1 --off --output HDMI1 --off --output VIRTUAL1 --off --output HDMI-1-2 --mode 1920x1080 --pos 1920x0 --rotate normal --output DP-1-  2 --mode 1920x1080 --pos 3840x0 --rotate normal
# udiskie icon
udiskie -t &

# applet icon
nm-applet &

# systray volume icon
volumeicon &

# systray battery icon
cbatticon -u 5 &

# Wallpapers
nitrogen --restore &

# Dropbox
dropbox &

# Picom
picom --config $HOME/.config/picom/picom.conf &
# bluetoothctl &
# bluetooth-player &
