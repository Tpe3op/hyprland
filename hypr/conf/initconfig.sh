#!/bin/sh

if [ ! -f ~/.hyprland.conf ]; then
    cp ~/dotfiles/hypr/conf/.hyprland.conf ~
    echo ".hyprland.conf created in your home directory."
else
    echo ".hyprland.conf already exists."
fi
echo ""
echo "PLEASE NOTE: Open ~/.hyprland.conf to setup keyboard layout and monitor settings."
