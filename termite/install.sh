#!/bin/bash
parent_path=$( cd "$(dirname "${BASH_SOURCE[0]}")" ; pwd -P )
cd "$parent_path"

sudo pacman -S termite

mkdir -p ~/.config/termite
cp config ~/.config/termite/config
