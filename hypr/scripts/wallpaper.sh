#!/bin/bash                                                       

wallpapers=("$HOME/Images/wallpapers/"*)   # Create array of file paths
if [ ${#wallpapers[@]} -gt 0 ]; then # Check if any wallpapers found
	random_index=$((RANDOM % ${#wallpapers[@]}))
	wallpaper="${wallpapers[$random_index]}"
else
	echo "Error: No wallpapers found in $HOME/wallpapers/" >&2
	exit 1 #Exit with error code
fi
transition_type="grow"
#transition_type="wipe"
#transition_type="random"

swww img $wallpaper \
    --transition-type=$transition_type \
    --transition-pos top-right \
    --transition-step 10

