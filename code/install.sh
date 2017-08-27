#!/bin/zsh
parent_path=$( cd "$(dirname "${BASH_SOURCE[0]}")" ; pwd -P )
cd "$parent_path"


yaourt -S visual-studio-code --noconfirm
code --list-extensions
rsync -avP *.json ~/.config/Code/User/
rsync -avP snippets ~/.config/Code/User/
