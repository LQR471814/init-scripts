#!/bin/bash

# setup AppImageLauncher
sudo apt-get install software-properties-common -y
curl -L -o appimagelauncher.deb https://github.com/TheAssassin/AppImageLauncher/releases/download/v2.2.0/appimagelauncher_2.2.0-travis995.0f91801.bionic_amd64.deb
sudo dpkg -i appimagelauncher.deb
rm appimagelauncher.deb

# install keepassxc
curl -L -o keepassxc.AppImage https://github.com/keepassxreboot/keepassxc/releases/download/2.7.8/KeePassXC-2.7.8-x86_64.AppImage
open keepassxc.AppImage

# install freetube
flatpak install flathub io.freetubeapp.FreeTube -y

# install obsidian
curl -L -o obsidian.AppImage https://github.com/obsidianmd/obsidian-releases/releases/download/v1.5.12/Obsidian-1.5.12.AppImage
open obsidian.AppImage

# install armcord
flatpak install flathub xyz.armcord.ArmCord -y

# install musescore
curl -L -o musescore.AppImage https://cdn.jsdelivr.net/musescore/v4.3.0/MuseScore-Studio-4.3.0.241231431-x86_64.AppImage
open musescore.AppImage

