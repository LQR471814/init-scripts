#!/bin/bash

sudo apt-get install zsh -y

mkdir -p ~/.zsh

git clone https://github.com/sindresorhus/pure.git ~/.zsh/pure
git clone https://github.com/softmoth/zsh-vim-mode.git ~/.zsh/vim-mode
git clone https://github.com/kutsan/zsh-system-clipboard ~/.zsh/clipboard

cp zshrc.sh ~/.zshrc
chsh -s $(which zsh)
sudo chsh -s $(which zsh)

