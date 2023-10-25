#!/bin/bash

bar=$(cat ~/.cache/.qtile_bar_x11.sh)
if [ $bar == "qtile" ]; then
    echo "Change to Polybar"
    echo "polybar" > ~/.cache/.qtile_bar_x11.sh
    notify-send "Status Bar is changing..." "to Polybar"
else
    echo "Change to Qtile Bar"
    echo "qtile" > ~/.cache/.qtile_bar_x11.sh
    notify-send "Status Bar is changing..." "to Qtile Status Bar"
fi

~/dotfiles/qtile/scripts/x11/loadbar.sh