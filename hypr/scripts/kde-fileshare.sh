#!/bin/bash

selected=$(clipse -p)
if [[ !  -f "$selected" && ! "$selected" =~ ^(http|https|ftp):// ]]; then
	tempfile=$(mktemp)
	kitty sh -c "fzf > '$tempfile'" || exit 1
	selected=$(cat "$tempfile" ) 
	rm -f "$tempfile"
fi

if [[ ! -z "$selected" ]]; then
	kdeconnect-cli -d 0ed77826_cc71_435d_9dcf_b01036c192ba --share $selected
fi
#
