#!/bin/bash
parent_path=$( cd "$(dirname "${BASH_SOURCE[0]}")" ; pwd -P )
cd "$parent_path"

sudo pacman -S python python-pip --noconfirm

sudo pip install -r requirements.txt

cd -
