#!/bin/bash
#    _                      _                 _  
#   | |__  _   _ _ __  _ __| | __ _ _ __   __| | 
#   | '_ \| | | | '_ \| '__| |/ _` | '_ \ / _` | 
#  _| | | | |_| | |_) | |  | | (_| | | | | (_| | 
# (_)_| |_|\__, | .__/|_|  |_|\__,_|_| |_|\__,_| 
#          |___/|_|                              
#  
# ----------------------------------------------------- 
# Overwrite hyprland configuration with hyprctl
# Individual scripts and settings possible
# ----------------------------------------------------- 

# ----------------------------------------------------- 
# Keyboard Layout
# -----------------------------------------------------
hyprctl keyword input:kb_layout us

# ----------------------------------------------------- 
# Monitor Setup
# See https://wiki.hyprland.org/Configuring/Monitors/
# ----------------------------------------------------- 
hyprctl keyword monitor ,preferred,auto,1
