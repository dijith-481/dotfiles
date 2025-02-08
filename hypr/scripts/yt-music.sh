#!/bin/bash 
if hyprctl activeworkspace | grep -q "workspace ID 11" ; then
	    brave --app=https://music.youtube.com
else
	if  hyprctl clients | grep -q "music.youtube.com" ; then
		hyprctl dispatch workspace 11
	else
	    brave --app=https://music.youtube.com
	fi
fi
