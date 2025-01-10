#!/bin/bash                                                       

wallpapers=("$HOME/Images/wallpapers/"*)   # Create array of file paths
if [ ${#wallpapers[@]} -gt 0 ]; then # Check if any wallpapers found
	random_index=$((RANDOM % ${#wallpapers[@]}))
	wallpaper="${wallpapers[$random_index]}"
else
	echo "Error: No wallpapers found in $HOME/wallpapers/" >&2
	exit 1 #Exit with error code
fi
wal -q -i "$wallpaper"
current_wp="$HOME/Images/wallpapers/current_wallpaper.png"
blurred_wp="$HOME/Images/wallpapers/current_wallpaper_blurred.png"
blur="50x30"

# write path to wp into file
#if [ ! -f $current_wp ]; then
#    touch $current_wp
#    echo "$HOME/Images/wallpapers/default.png" > "$current_wp"
#fi

# current wallpaper path
#current_wallpaper=$(cat "$current_wp")

# select new wallpaper
#case $1 in
#    "init")
#        if [ -f $current_wp ]; then
#            wal -q -i $current_wallpaper
#        else
#            wal -q -i ~/wallpapers/
#        fi
#    ;;
#    # random wallpaper
#    *)
#        wal -q -i ~/wallpapers/
#    ;;
#esac

# new wallpaper name
#new_wp=$(echo $wallpaper | sed "s|$HOME/Images/wallpapers/||g")

# launch waybar based on new wallpaper colors
source "$HOME/.cache/wal/colors.sh"
~/.config/waybar/reload.sh

# update soft link to cava colors based on wallpaper colors
# (cava needs to manually be restarted)
ln -sf "$HOME/.cache/wal/cava-colors" "$HOME/.config/cava/config"

# switch to new wallpaper with swww
transition_type="grow"
#transition_type="wipe"
#transition_type="random"

swww img $wallpaper \
    --transition-type=$transition_type \
    --transition-pos top-right

# create blurred wallpaper (for wlogout)
magick $wallpaper -resize 1920x1200\! $wallpaper
echo ":: Resized"
if [ ! "$blur" == "0x0" ] ; then
    magick $wallpaper -blur $blur $blurred_wp
    echo ":: Blurred"
fi

# update current wallpaper file

cp "$wallpaper" "$current_wp"


