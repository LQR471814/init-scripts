sudo apt-get install xorg libx11-dev libxft-dev libxinerama-dev xdm suckless-tools dmenu

git clone https://github.com/LQR471814/dotconfig.dwm-bar.git ~/.config/dwm-bar

echo "
start_dwm_bar() {
	sleep 1s
	pidof dwm
	if [ \$? -eq 0 ]; then
	    /home/lqr471814/.config/dwm-bar/dwm_bar.sh &
	fi
}
start_dwm_bar &
" >> ~/.profile

