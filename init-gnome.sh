#!/bin/bash

# setup extensions
flatpak install flathub com.mattjakeman.ExtensionManager -y

# gnome settings
gsettings set org.gnome.settings-daemon.plugins.media-keys terminal "['<Shift><Alt>t']"
gsettings set org.gnome.desktop.wm.keybindings close "['<Super>q']"
gsettings set org.gnome.shell.extensions.dash-to-dock shortcut "[]"
gsettings set org.gnome.shell.extensions.dash-to-dock shortcut-text ""
gsettings set org.gnome.desktop.interface color-scheme "'prefer-dark'"
gsettings set org.gnome.desktop.interface gtk-theme "'Yaru-sage-dark'"
gsettings set org.gnome.desktop.background picture-uri "'file:///usr/share/backgrounds/Fuji_san_by_amaral.png'"
gsettings set org.gnome.shell.extensions.dash-to-dock autohide true
gsettings set org.gnome.desktop.interface clock-format "'12h'"
gsettings set org.gtk.Settings.FileChooser clock-format "'12h'"
gsettings set org.gnome.desktop.peripherals.mouse accel-profile "'flat'"
gsettings set org.gnome.desktop.peripherals.mouse speed 0.2
gsettings set org.gnome.settings-daemon.plugins.media-keys home "['<Super>e']"

# setup wm
curl -L -o paperwm.zip https://extensions.gnome.org/extension-data/paperwmpaperwm.github.com.v111.shell-extension.zip
gnome-extensions disable ding@rastersoft.com
gnome-extensions install paperwm.zip
touch AT_POSTLOGIN_INSTALL
read -p "you must logout and log back in and rerun this script to continue the installation. (PRESS ENTER TO CONTINUE)"
gnome-session-quit

