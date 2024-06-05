#!/bin/bash

sudo apt-get install pkg-config libfreetype6-dev libfontconfig1-dev libxcb-xfixes0-dev libxkbcommon-dev -y
cargo install alacritty
git clone https://github.com/LQR471814/dotconfig.alacritty.git ~/.config/alacritty
sudo ln -s $(which alacritty) /usr/bin/alacritty
gsettings set org.gnome.desktop.default-applications.terminal exec /usr/bin/alacritty
gsettings set org.gnome.desktop.default-applications.terminal exec-arg "--working-directory"

