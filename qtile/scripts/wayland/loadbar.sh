#!/bin/bash
#  _                 _ _                 
# | | ___   __ _  __| | |__   __ _ _ __  
# | |/ _ \ / _` |/ _` | '_ \ / _` | '__| 
# | | (_) | (_| | (_| | |_) | (_| | |    
# |_|\___/ \__,_|\__,_|_.__/ \__,_|_|    
#                                        
# by Stephan Raabe (2023) 
# ----------------------------------------------------- 

# ----------------------------------------------------- 
# Check if information about the bar exists in .cache
# If not create it
# ----------------------------------------------------- 
if [ ! -f ~/.cache/.qtile_bar_wayland.sh ]; then
    touch ~/.cache/.qtile_bar_wayland.sh
    echo "qtile" > ~/.cache/.qtile_bar_wayland.sh
    echo ".qtile_bar_wayland.sh created"
fi    

# ----------------------------------------------------- 
# Load status bar information
# ----------------------------------------------------- 
bar=$(cat ~/.cache/.qtile_bar_wayland.sh)

# ----------------------------------------------------- 
# Load status bar based on loaded information
# ----------------------------------------------------- 
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

