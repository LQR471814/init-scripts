#!/bin/bash

curl -L -o paperwm.zip https://extensions.gnome.org/extension-data/paperwmpaperwm.github.com.v111.shell-extension.zip
gnome-extensions disable ding@rastersoft.com
gnome-extensions install paperwm.zip
echo "./gnome/postlogin.sh" > POSTLOGIN_SCRIPT
read -p "you must logout and log back in and rerun this script to continue the installation. (PRESS ENTER TO CONTINUE)"
gnome-session-quit
