#!/bin/bash

# flatpak apps
flatpak install flathub it.mijorus.gearlever -y
flatpak install flathub io.freetubeapp.FreeTube -y
flatpak install flathub xyz.armcord.ArmCord -y
flatpak install flathub io.dbeaver.DBeaverCommunity -y

# install zen browser
flatpak install flathub io.github.zen_browser.zen -y

sudo update-alternatives --install /usr/bin/gnome-www-browser gnome-www-browser /var/lib/flatpak/exports/bin/io.github.zen_browser.zen 2000
sudo update-alternatives --install /usr/bin/www-browser www-browser /var/lib/flatpak/exports/bin/io.github.zen_browser.zen 2000
sudo update-alternatives --install /usr/bin/x-www-browser x-www-browser /var/lib/flatpak/exports/bin/io.github.zen_browser.zen 2000

# install keepassxc
curl -L -o keepassxc.AppImage https://github.com/keepassxreboot/keepassxc/releases/download/2.7.8/KeePassXC-2.7.8-x86_64.AppImage
open keepassxc.AppImage

# install obsidian
curl -L -o obsidian.AppImage https://github.com/obsidianmd/obsidian-releases/releases/download/v1.5.12/Obsidian-1.5.12.AppImage
open obsidian.AppImage

# install musescore
curl -L -o musescore.AppImage https://cdn.jsdelivr.net/musescore/v4.3.0/MuseScore-Studio-4.3.0.241231431-x86_64.AppImage
open musescore.AppImage

# install miru
curl -L -o miru.AppImage https://objects.githubusercontent.com/github-production-release-asset-2e65be/288209346/02b78b0e-aa12-4102-9769-d70181bed164?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=releaseassetproduction%2F20240602%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20240602T041245Z&X-Amz-Expires=300&X-Amz-Signature=f371e52dbe0f7e8950b90a6a790c14e5d6c4a16bff527847971db0c55797e89d&X-Amz-SignedHeaders=host&actor_id=42160088&key_id=0&repo_id=288209346&response-content-disposition=attachment%3B%20filename%3Dlinux-Miru-5.1.0.AppImage&response-content-type=application%2Foctet-stream
open miru.AppImage

# install ezytdl
sudo apt install -y libvips
curl -o ezytdl.AppImage -L https://github.com/sylviiu/ezytdl/releases/download/2.4.2/ezytdl-linux.AppImage
./ezytdl.AppImage --no-sandbox

