# (path: string)
set_default_browser() {
    local path=$1

    echo "[DEFAULTS] set default browser to $name..."

    # add gsettings changes

    sudo update-alternatives --install /usr/bin/gnome-www-browser gnome-www-browser $path 2000
    sudo update-alternatives --install /usr/bin/www-browser www-browser $path 2000
    sudo update-alternatives --install /usr/bin/x-www-browser x-www-browser $path 2000
}

# (name: string, path: string)
set_default_terminal() {
    local name=$1
    local path=$2
    echo "[DEFAULTS] set default terminal to $name..."

    gsettings set org.gnome.desktop.default-applications.terminal exec $path
    sudo update-alternatives --config x-terminal-emulator
}

# (full_domain: string, name: string)
flatpak_install() {
    local full_domain=$1
    local name=$2
    echo "[FLATPAK] installing $name..."

    flatpak install flathub $full_domain -y
    ln -s /var/lib/flatpak/exports/bin/$full_domain /usr/bin/$name
}

# (url: string, name: string)
appimage_install() {
    local url=$1
    local name=$2
    echo "[APP_IMAGE] installing $name..."

    curl -L -o ~/Downloads/$name.AppImage $url
    open ~/Downloads/$name.AppImage
}

# (
#   name: string,          // the name of the daemon, should be path safe!
#   description: string,   // the description of the daemon, will be used in the systemd file
#   exec_start: string,    // a path, either absolute, or relative to a ~/Services/<service_name> dir which will be created
#   wd: string,            // a path, either absolute, or relative to ~/Services<service_name>, it is the working directory for the application
# )
create_daemon() {
    local name=$1
    local description=$2
    local exec_start=$3
    local wd=$4

    echo "[DAEMON] creating $name ($description)..."

    mkdir -p ~/.config/systemd/user

    local service_path="$HOME/Services/$name"
    mkdir -p $service_path

    local computed_exec_start=$exec_start
    if [[ $exec_start != /* ]] then
        computed_exec_start=$(realpath "$service_path/$exec_start")
    fi

    local computed_wd=$wd
    if [[ $wd != /* ]] then
        computed_wd=$(realpath "$service_path/$wd")
    fi

    echo "[Unit]
Description=$description

[Service]
Type=simple
TimeoutStartSec=0
ExecStart=$computed_exec_start
WorkingDirectory=$computed_wd

[Install]
WantedBy=default.target" > "~/.config/systemd/user/$name.service"

    printf $service_path
}

start_daemon() {
    local name=$1
    systemctl --user enable $name
    systemctl --user start $name
}

