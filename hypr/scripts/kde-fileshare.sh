#!/bin/bash

selected=$(clipse -p)
if [[ !  -f "$selected" && ! "$selected" =~ ^(http|https|ftp):// ]]; then
	tempfile=$(mktemp)
	kitty sh -c "fzf > '$tempfile'" || exit 1
	selected=$(cat "$tempfile" ) 
	rm -f "$tempfile"
fi
if [[ ! -z "$selected" ]]; then
	kdeconnect-handler $selected
fi
#
