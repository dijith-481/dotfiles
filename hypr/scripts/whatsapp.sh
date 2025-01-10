#!/bin/bash 
if hyprctl activeworkspace | grep -q "workspace ID 7" ; then
	    brave --app=https://web.whatsapp.com
else
	if  hyprctl clients | grep -q "web.whatsapp.com" ; then
		hyprctl dispatch workspace 7
	else
	    brave --app=https://web.whatsapp.com
	fi
fi
