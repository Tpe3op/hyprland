#!/bin/bash

bar=$(cat ~/.cache/.qtile_bar_wayland.sh)
if [ $bar == "qtile" ]; then
    echo "Change to Waybar"
    echo "waybar" > ~/.cache/.qtile_bar_wayland.sh
    notify-send "Status Bar is changing..." "to Waybar"
else
    echo "Change to Qtile Bar"
    echo "qtile" > ~/.cache/.qtile_bar_wayland.sh
    notify-send "Status Bar is changing..." "to Qtile Status Bar"
fi

~/dotfiles/qtile/scripts/wayland/loadbar.sh