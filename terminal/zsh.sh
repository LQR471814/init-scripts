#!/bin/bash

sudo apt-get install zsh -y
git clone --recurse-submodules https://github.com/LQR471814/dotconfig.zsh.git ~/.config/zsh
cat zshrc.sh > ~/.zshrc
chsh -s $(which zsh)
sudo chsh -s $(which zsh)
