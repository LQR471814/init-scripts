#!/bin/bash

# setup zsh
sudo apt-get install zsh -y
git clone --recurse-submodules https://github.com/LQR471814/dotconfig.zsh.git ~/.config/zsh
cat zshrc.sh > ~/.zshrc
chsh -s $(which zsh)
sudo chsh -s $(which zsh)

# setup alacritty
sudo apt-get install pkg-config libfreetype6-dev libfontconfig1-dev libxcb-xfixes0-dev libxkbcommon-dev -y
cargo install alacritty
git clone https://github.com/LQR471814/dotconfig.alacritty.git ~/.config/alacritty
sudo ln -s $(which alacritty) /usr/bin/alacritty
gsettings set org.gnome.desktop.default-applications.terminal exec /usr/bin/alacritty
gsettings set org.gnome.desktop.default-applications.terminal exec-arg "--working-directory"

# setup nerd font
curl -L -o jetbrainsmono.zip https://github.com/ryanoasis/nerd-fonts/releases/download/v3.2.1/JetBrainsMono.zip
unzip -qq jetbrainsmono.zip -d jetbrainsmono
mkdir -p ~/.local/share/fonts
mv JetBrainsMonoNerdFont-Regular.ttf ~/.local/share/fonts/
mv JetBrainsMonoNerdFont-Bold.ttf ~/.local/share/fonts/
mv JetBrainsMonoNerdFont-Italic.ttf ~/.local/share/fonts/
rm -rf jetbrainsmono
rm jetbrainsmono.zip

