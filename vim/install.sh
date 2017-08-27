#!/bin/bash
parent_path=$( cd "$(dirname "${BASH_SOURCE[0]}")" ; pwd -P )
cd "$parent_path"

sudo pacman -S cmake --noconfirm

mkdir -p ~/.vim
rsync -avP .vimrc ~/.vimrc
rsync -avP colors/ ~/.vim/colors


git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall


cd ~/.vim/bundle/command-t/ruby/command-t/ext/command-t
ruby extconf.rb
make
cd -

cd ~/.vim/bundle/YouCompleteMe
./install.py --gocode-completer
cd -
