#!/bin/bash
#  _       _ _   ______        ____        ____        __ 
# (_)_ __ (_) |_/ ___\ \      / /\ \      / /\ \      / / 
# | | '_ \| | __\___ \\ \ /\ / /  \ \ /\ / /  \ \ /\ / /  
# | | | | | | |_ ___) |\ V  V /    \ V  V /    \ V  V /   
# |_|_| |_|_|\__|____/  \_/\_/      \_/\_/      \_/\_/    
#                                                         
# by Stephan Raabe (2023) 
# ----------------------------------------------------- 

# ----------------------------------------------------- 
# Select wallpaper from last session and create color scheme
# ----------------------------------------------------- 
if [ -f ~/.cache/current_wallpaper.jpg ]; then
    wal -q -i ~/.cache/current_wallpaper.jpg
else
    wal -q -i ~/wallpaper/
fi

# ----------------------------------------------------- 
# Load current pywal color scheme
# ----------------------------------------------------- 
source "$HOME/.cache/wal/colors.sh"

# ----------------------------------------------------- 
# get wallpaper iamge name
# ----------------------------------------------------- 
newwall=$(echo $wallpaper | sed "s|$HOME/wallpaper/||g")

# ----------------------------------------------------- 
# Set the new wallpaper
# ----------------------------------------------------- 
swww img $wallpaper \
    --transition-bezier .43,1.19,1,.4 \
    --transition-fps=60 \
    --transition-type="random" \
    --transition-duration=0.7 \
    --transition-pos "$( hyprctl cursorpos )"

echo "DONE!"
