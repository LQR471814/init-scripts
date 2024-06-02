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

# install miru
curl -L -o miru.AppImage https://objects.githubusercontent.com/github-production-release-asset-2e65be/288209346/02b78b0e-aa12-4102-9769-d70181bed164?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=releaseassetproduction%2F20240602%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20240602T041245Z&X-Amz-Expires=300&X-Amz-Signature=f371e52dbe0f7e8950b90a6a790c14e5d6c4a16bff527847971db0c55797e89d&X-Amz-SignedHeaders=host&actor_id=42160088&key_id=0&repo_id=288209346&response-content-disposition=attachment%3B%20filename%3Dlinux-Miru-5.1.0.AppImage&response-content-type=application%2Foctet-stream
open miru.AppImage

