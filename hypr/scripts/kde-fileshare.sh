#!/bin/bash

selected=$(clipse -p)
if [[ ! -f "$selected" && ! "$selected" =~ ^(http|https|ftp):// ]]; then
  tempfile=$(mktemp)
  kitty sh -c "fzf > '$tempfile'" || exit 1
  selected=$(cat "$tempfile")
  rm -f "$tempfile"
fi

if [[ -n "$selected" ]]; then
  kdeconnect-cli -n "Galaxy A52s 5G" --share "$selected"
fi
