#!/bin/bash
pkill fum || kitty --class fum -e 'fum' &
playerctl play-pause
