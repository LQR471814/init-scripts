#!/bin/bash

sudo apt-get install pkg-config libfreetype6-dev libfontconfig1-dev libxcb-xfixes0-dev libxkbcommon-dev -y
sudo apt install alacritty
git clone https://github.com/LQR471814/dotconfig.alacritty.git ~/.config/alacritty
gsettings set org.gnome.desktop.default-applications.terminal exec /usr/bin/alacritty
gsettings set org.gnome.desktop.default-applications.terminal exec-arg "--working-directory"
sudo update-alternatives --config x-terminal-emulator

