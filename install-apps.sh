. "./utils.sh"

# alacritty
sudo apt install alacritty pkg-config libfreetype6-dev libfontconfig1-dev libxcb-xfixes0-dev libxkbcommon-dev -y
git clone https://github.com/LQR471814/dotconfig.alacritty.git ~/.config/alacritty
set_default_terminal /usr/bin/alacritty

# neovim
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux64.tar.gz
sudo rm -rf /opt/nvim
sudo tar -C /opt -xzf nvim-linux64.tar.gz
git clone https://github.com/LQR471814/dotconfig.nvim.git ~/.config/nvim

flatpak_install it.mijorus.gearlever             gearlever
flatpak_install io.freetubeapp.FreeTube          freetube
flatpak_install xyz.armcord.ArmCord              armcord
flatpak_install io.dbeaver.DBeaverCommunity      dbeaver
flatpak_install com.mattjakeman.ExtensionManager extension_manager

# flatpak_install io.github.zen_browser.zen zen
# set_default_browser /usr/bin/zen

curl -L -o thorium.deb https://github.com/Alex313031/thorium/releases/download/M126.0.6478.251/thorium-browser_TH24_126.0.6478.251_SSE4.deb
sudo dpkg -i thorium.deb
rm thorium.deb

appimage_install "https://github.com/keepassxreboot/keepassxc/releases/download/2.7.8/KeePassXC-2.7.8-x86_64.AppImage" keepassxc
appimage_install "https://github.com/musescore/MuseScore/releases/download/v4.4.2/MuseScore-Studio-4.4.2.242570931-x86_64.AppImage" musescore
appimage_install "https://objects.githubusercontent.com/github-production-release-asset-2e65be/288209346/02b78b0e-aa12-4102-9769-d70181bed164?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=releaseassetproduction%2F20240602%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20240602T041245Z&X-Amz-Expires=300&X-Amz-Signature=f371e52dbe0f7e8950b90a6a790c14e5d6c4a16bff527847971db0c55797e89d&X-Amz-SignedHeaders=host&actor_id=42160088&key_id=0&repo_id=288209346&response-content-disposition=attachment%3B%20filename%3Dlinux-Miru-5.1.0.AppImage&response-content-type=application%2Foctet-stream" miru

sudo apt install -y libvips
appimage_install "https://github.com/sylviiu/ezytdl/releases/download/2.4.2/ezytdl-linux.AppImage" ezytdl

