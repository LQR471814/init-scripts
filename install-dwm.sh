sudo apt-get install xorg libx11-dev libxft-dev libxinerama-dev xdm suckless-tools dmenu dwm picom playerctl pavucontrol pulseaudio-utils -y

# see https://bbs.archlinux.org/viewtopic.php?pid=2100854#p2100854
sudo apt remove xdg-desktop-portal-gnome -y

git clone https://github.com/LQR471814/dotconfig.dwm-bar.git ~/.config/dwm-bar
git clone https://github.com/LQR471814/dotconfig.picom ~/.config/picom

echo "
start_dwm_bar() {
	sleep 1s
	pidof dwm
	if [ \$? -eq 0 ]; then
	    /home/lqr471814/.config/dwm-bar/dwm_bar.sh &
	    picom --config /home/lqr471814/.config/picom/picom.conf &
	fi
}
start_dwm_bar &
" >> ~/.profile

sudo sysctl -w kernel.apparmor_restrict_unprivileged_userns=0

