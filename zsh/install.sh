#!/bin/zsh
parent_path=$( cd "$(dirname "${BASH_SOURCE[0]}")" ; pwd -P )
cd "$parent_path"

echo "START zsh shell install"

sudo pacman -S zsh

echo "-- Clone config repository"
git clone --recursive https://github.com/lukasleppich/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"
cd "${ZDOTDIR:-$HOME}/.zprezto"
git pull origin master
cd "$parent_path"


echo "-- Link config files"
setopt EXTENDED_GLOB
for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do
  ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}" -f
done

echo "-- Set default shell to zsh"
chsh -s /bin/zsh


echo "END zsh shell install"
