curl -L -o paperwm.zip https://extensions.gnome.org/extension-data/paperwmpaperwm.github.com.v111.shell-extension.zip
gnome-extensions disable ding@rastersoft.com
gnome-extensions install paperwm.zip

read -p "you must logout and log back in and run install-paperwm-postlogin.sh to finish the installation. (PRESS ENTER TO CONTINUE)"

gnome-session-quit
