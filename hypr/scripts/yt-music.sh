#!/bin/bash 
	if  hyprctl clients | grep -q "music.youtube.com" ; then
		hyprctl dispatch workspace 11

		if  !(hyprctl clients | grep -q "cava0") ; then
		kitty  -c ~/.config/kitty/cava.conf --class cava0 -e cava &bg
		fi
		if  !(hyprctl clients | grep -q "cava1") ; then
		kitty -c ~/.config/kitty/cava.conf --class cava1 -e cava &bg
		fi
		if  !(hyprctl clients | grep -q "cava2") ; then
		kitty -c ~/.config/kitty/cava.conf --class cava2 -e cava &bg
		fi
	else
	    brave --app=https://music.youtube.com 

		kitty  -c ~/.config/kitty/cava.conf --class cava0 -e cava &bg
		kitty -c ~/.config/kitty/cava.conf --class cava1 -e cava &bg
		kitty -c ~/.config/kitty/cava.conf --class cava2 -e cava &bg
	fi
