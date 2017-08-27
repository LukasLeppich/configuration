#!/bin/bash

sudo pacman -S zathura zathura-ps zathura-pdf-mupdf zathura-djvu --noconfirm


echo "set selection-clipboard clipboard" > ~/.config/zathura/zathurarc
