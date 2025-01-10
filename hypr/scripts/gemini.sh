#!/bin/bash 
if hyprctl activeworkspace | grep -q "workspace ID 6" ; then
	brave --app=https://aistudio.google.com
else
	if  hyprctl clients | grep -q "aistudio.google.com" ; then
		hyprctl dispatch workspace 6
	else
		brave --app=https://aistudio.google.com
	fi
fi
