#!/bin/bash
parent_path=$( cd "$(dirname "${BASH_SOURCE[0]}")" ; pwd -P )
cd "$parent_path"


sudo pacman -S adobe-source-code-pro-fonts

rsync -avP .i3* ~

