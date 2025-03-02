#!/bin/bash
if hyprctl activeworkspace | grep -q "workspace ID 2"; then
  foot -T nvim nvim
else
  if hyprctl clients | grep -q "nvim"; then
    hyprctl dispatch workspace 2
  else
    foot -T nvim nvim
  fi
fi
