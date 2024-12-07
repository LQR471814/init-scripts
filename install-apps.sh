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

# xpdf
sudo apt install xpdf -y
set_default_mime_handler application/pdf $(which xpdf)

flatpak_install it.mijorus.gearlever             gearlever
flatpak_install io.freetubeapp.FreeTube          freetube
flatpak_install xyz.armcord.ArmCord              armcord
flatpak_install io.dbeaver.DBeaverCommunity      dbeaver
flatpak_install com.mattjakeman.ExtensionManager extension_manager

curl -L -o thorium.deb https://github.com/Alex313031/thorium/releases/download/M126.0.6478.251/thorium-browser_TH24_126.0.6478.251_SSE4.deb
sudo dpkg -i thorium.deb
rm thorium.deb
set_default_browser /usr/bin/thorium-browser

appimage_install "https://github.com/keepassxreboot/keepassxc/releases/download/2.7.8/KeePassXC-2.7.8-x86_64.AppImage" keepassxc
appimage_install "https://github.com/musescore/MuseScore/releases/download/v4.4.2/MuseScore-Studio-4.4.2.242570931-x86_64.AppImage" musescore
appimage_install "https://objects.githubusercontent.com/github-production-release-asset-2e65be/288209346/02b78b0e-aa12-4102-9769-d70181bed164?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=releaseassetproduction%2F20240602%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20240602T041245Z&X-Amz-Expires=300&X-Amz-Signature=f371e52dbe0f7e8950b90a6a790c14e5d6c4a16bff527847971db0c55797e89d&X-Amz-SignedHeaders=host&actor_id=42160088&key_id=0&repo_id=288209346&response-content-disposition=attachment%3B%20filename%3Dlinux-Miru-5.1.0.AppImage&response-content-type=application%2Foctet-stream" miru

sudo apt install -y libvips
appimage_install "https://github.com/sylviiu/ezytdl/releases/download/2.4.2/ezytdl-linux.AppImage" ezytdl

# yazi
curl -L -o yazi.zip https://github.com/sxyazi/yazi/releases/download/v0.3.3/yazi-x86_64-unknown-linux-gnu.zip
unzip yazi.zip
mv yazi-x86_64-unknown-linux-gnu ~/bin/yazi
ln -s ~/bin/ya ~/bin/yazi/yazi

echo 'deb http://download.opensuse.org/repositories/home:/justkidding/xUbuntu_24.04/ /' | sudo tee /etc/apt/sources.list.d/home:justkidding.list
curl -fsSL https://download.opensuse.org/repositories/home:justkidding/xUbuntu_24.04/Release.key | gpg --dearmor | sudo tee /etc/apt/trusted.gpg.d/home_justkidding.gpg > /dev/null
sudo apt update
sudo apt install ueberzugpp

# sagemath
sudo apt install -y automake bc binutils bzip2 ca-certificates cliquer cmake curl ecl eclib-tools fflas-ffpack flintqs g++ gengetopt gfan gfortran git glpk-utils gmp-ecm lcalc libatomic-ops-dev libboost-dev libbraiding-dev libbz2-dev libcdd-dev libcdd-tools libcliquer-dev libcurl4-openssl-dev libec-dev libecm-dev libffi-dev libflint-dev libfreetype-dev libgc-dev libgd-dev libgf2x-dev libgiac-dev libgivaro-dev libglpk-dev libgmp-dev libgsl-dev libhomfly-dev libiml-dev liblfunction-dev liblrcalc-dev liblzma-dev libm4rie-dev libmpc-dev libmpfi-dev libmpfr-dev libncurses-dev libntl-dev libopenblas-dev libpari-dev libpcre3-dev libplanarity-dev libppl-dev libprimesieve-dev libpython3-dev libqhull-dev libreadline-dev librw-dev libsingular4-dev libsqlite3-dev libssl-dev libsuitesparse-dev libsymmetrica2-dev zlib1g-dev libzmq3-dev libzn-poly-dev m4 make nauty openssl palp pari-doc pari-elldata pari-galdata pari-galpol pari-gp2c pari-seadata patch perl pkg-config planarity ppl-dev python3-setuptools python3-venv r-base-dev r-cran-lattice singular sqlite3 sympow tachyon tar tox xcas xz-utils
sudo apt install -y texlive-latex-extra texlive-xetex latexmk pandoc dvipng
sudo apt install -y libec-dev eclib-tools fflas-ffpack libfplll-dev gap libgap-dev libgivaro-dev texinfo liblinbox-dev liblrcalc-dev libm4ri-dev libm4rie-dev maxima meson ninja-build patchelf libprimecount-dev qhull-bin libqhull-dev singular singular-doc libsingular4-dev

git clone --branch master https://github.com/sagemath/sage.git --depth 1 ~/sage
cd ~/sage
make configure
./configure
MAKE="make -j8" make
sudo ln -sf ~/sage /usr/local/bin

