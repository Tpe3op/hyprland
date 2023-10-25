#!/bin/bash
if [ ! -f ~/.cache/.qtile_bar_wayland.sh ]; then
    touch ~/.cache/.qtile_bar_wayland.sh
    echo "qtile" > ~/.cache/.qtile_bar_wayland.sh
    echo ".qtile_bar_wayland.sh created"
fi    

bar=$(cat ~/.cache/.qtile_bar_wayland.sh)
if [ $bar == "qtile" ]; then
    killall waybar
    sleep 1
    qtile cmd-obj -o cmd -f reload_config
else
    killall waybar
    sleep 1
    qtile cmd-obj -o cmd -f reload_config
    sleep 1
    ~/dotfiles/waybar/launch.sh &
    sleep 2
    qtile cmd-obj -o cmd -f reload_config
fi

