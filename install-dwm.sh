sudo apt-get install xorg libx11-dev libxft-dev libxinerama-dev xdm suckless-tools dmenu dwm picom playerctl pavucontrol pulseaudio-utils flameshot -y

# see https://bbs.archlinux.org/viewtopic.php?pid=2100854#p2100854
sudo apt remove xdg-desktop-portal-gnome -y

git clone https://github.com/LQR471814/dotconfig.dwm-bar.git ~/.config/dwm-bar
git clone https://github.com/LQR471814/dotconfig.picom ~/.config/picom

mkdir -p ~/.dwm
echo "/home/lqr471814/.config/dwm-bar/dwm_bar.sh &
picom --config /home/lqr471814/.config/picom/picom.conf &
/home/lqr471814/bin/activitywatch/aw-qt --no-gui 2> ~/activitywatch.log &
/usr/bin/syncthing serve --no-browser --logfile=default &" > ~/.dwm/autostart.sh
chmod +x ~/.dwm/autostart.sh

# change to 24h time
gsettings set org.gnome.desktop.interface clock-format '24h'

sudo sysctl -w kernel.apparmor_restrict_unprivileged_userns=0

# fix dark mode
sudo apt install lxappearance -y
echo "switch the theme to Yaru-blue"
lxappearance

