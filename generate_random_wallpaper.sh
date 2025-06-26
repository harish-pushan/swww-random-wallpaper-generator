#!/bin/bash

# Get list of all files in ~/wallpaper directory
files=(~/wallpaper/*)

# Count number of files
numfiles=${#files[@]}

# Initialize array to hold only valid files
abs_list=()

# Filter only regular files (not directories, etc.)
for FILE in "${files[@]}"; do 
    if [ -f "$FILE" ]; then 
        abs_list+=("$FILE")
    fi
done

# Pick a random index from the list
Random_files=$((RANDOM % ${#abs_list[@]}))

# Set the wallpaper using swww
swww img "${abs_list[$Random_files]}" --transition-type grow --transition-duration 1

# Debug output
echo "List: ${abs_list[@]}"
echo "Number of files: $numfiles"
echo "Random file index: $Random_files"
echo "Selected file: ${abs_list[$Random_files]}"
