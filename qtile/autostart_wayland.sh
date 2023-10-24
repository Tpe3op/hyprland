#!/bin/sh
#   ___ _____ ___ _     _____   ____  _             _    
#  / _ \_   _|_ _| |   | ____| / ___|| |_ __ _ _ __| |_  
# | | | || |  | || |   |  _|   \___ \| __/ _` | '__| __| 
# | |_| || |  | || |___| |___   ___) | || (_| | |  | |_  
#  \__\_\|_| |___|_____|_____| |____/ \__\__,_|_|   \__| 
#                                                        
#  
# by Stephan Raabe (2023) 
# ----------------------------------------------------- 

# My screen resolution
# xrandr --rate 120

# For Virtual Machine 
# xrandr --output Virtual-1 --mode 1920x1080

# Set keyboard mapping in config.py

# Load power manager
xfce4-power-manager &

# Load notification service
dunst &

# Launch GTK
~/dotfiles/gtk/gtk.sh

# Launch waybar
~/dotfiles/waybar/launch.sh &

sleep 1

swww init

# Setup Wallpaper and update colors
~/dotfiles/qtile/scripts/wayland/wallpaper.sh init &