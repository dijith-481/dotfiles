#!/bin/bash 
if hyprctl activeworkspace | grep -q "workspace ID 5" ; then
	    brave --app=https://music.youtube.com
else
	if  hyprctl clients | grep -q "music.youtube.com" ; then
		hyprctl dispatch workspace 5
	else
	    brave --app=https://music.youtube.com
	fi
fi
