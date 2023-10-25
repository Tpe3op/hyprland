#!/bin/bash
if [ ! -f ~/.cache/.qtile_bar_x11.sh ]; then
    touch ~/.cache/.qtile_bar_x11.sh
    echo "qtile" > ~/.cache/.qtile_bar_x11.sh
    echo ".qtile_bar_x11.sh created"
fi    

bar=$(cat ~/.cache/.qtile_bar_x11.sh)
if [ $bar == "qtile" ]; then
    killall polybar
    sleep 1
    qtile cmd-obj -o cmd -f reload_config
else
    killall polybar
    sleep 1
    qtile cmd-obj -o cmd -f reload_config
    sleep 1
    source "$HOME/.cache/wal/colors.sh"
    ~/dotfiles/polybar/launch.sh &
    sleep 1
    qtile cmd-obj -o cmd -f reload_config
fi

