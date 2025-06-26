#!/bin/bash

# Set your wallpaper directory
WALLPAPER_DIR="$HOME/wallpaper"

# Index file to store the last used index
INDEX_FILE="$HOME/.current_wallpaper_index"

# Create index file if it doesn't exist
if [ ! -f "$INDEX_FILE" ]; then
    echo 0 > "$INDEX_FILE"
fi

# Read the current index
index=$(cat "$INDEX_FILE")


total=(~/wallpaper/)


# Loop index if it exceeds array length
if [ "$index" -ge "$total" ]; then
    index=0
fi

# Set the wallpaper using `swww`
swww img "${wallpapers[$index]}" --transition-type grow --transition-duration 1

# Increment and save the new index
next_index=$((index + 1))
echo "$next_index" > "$INDEX_FILE"
