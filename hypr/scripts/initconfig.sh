#!/bin/sh
#  _       _ _    ____             __ _        
# (_)_ __ (_) |_ / ___|___  _ __  / _(_) __ _  
# | | '_ \| | __| |   / _ \| '_ \| |_| |/ _` | 
# | | | | | | |_| |__| (_) | | | |  _| | (_| | 
# |_|_| |_|_|\__|\____\___/|_| |_|_| |_|\__, | 
#                                       |___/  
# by Stephan Raabe (2023) 
# ----------------------------------------------------- 

echo ""
echo "-> Create .hyprland.conf if not exists"

# ----------------------------------------------------- 
# Check if .hyprland.conf already exisits if not create
# ----------------------------------------------------- 
if [ ! -f ~/.hyprland.conf ]; then
    cp ~/dotfiles/hypr/conf/.hyprland.sh ~
    echo ".hyprland.conf created in your home directory."
    echo "PLEASE NOTE: Open ~/.hyprland.sh to setup keyboard layout and monitor settings."
else
    echo ".hyprland.sh already exists."
fi
