#!/bin/bash

setup metasearch2
git clone https://github.com/mat-1/metasearch2.git
cd metasearch2 && \
    cargo b -r && \
    mkdir -p ~/Services/metasearch && \
    mv ./target/release/metasearch2 ~/Services/metasearch/metasearch2 && \
cp ./metasearch-config.toml ~/Services/metasearch/config.toml
cd ..
rm -rf ./metasearch2
mkdir -p ~/.config/systemd/user
echo "[Unit]
Description=metasearch engine

[Service]
Type=simple
TimeoutStartSec=0
ExecStart=$HOME/Services/metasearch/metasearch2
WorkingDirectory=$HOME/Services/metasearch

[Install]
WantedBy=default.target" > ~/.config/systemd/user/metasearch.service
systemctl --user enable metasearch
systemctl --user start metasearch

# setup google-drive-ocamlfuse
sudo add-apt-repository ppa:alessandro-strada/ppa -y
sudo apt-get update
sudo apt-get install google-drive-ocamlfuse -y
read -p "please enter OAuth2 client ID from the Google Cloud Console:" client_id
read -p "please enter OAuth2 client SECRET from the Google Cloud Console:" client_secret
mkdir -p ~/Services/google-drive
google-drive-ocamlfuse -id $client_id -secret $client_secret
chmod +x ~/Services/google-drive/google-drive.sh
echo "[Unit]
Description=Google Drive FUSE filesystem
After=network.target

[Service]
Type=forking
ExecStart=google-drive-ocamlfuse \"$HOME/Google Drive\"
ExecStop=fusermount -u \"$HOME/Google Drive\"
Restart=always
RemainAfterExit=yes

[Install]
WantedBy=default.target" > ~/.config/systemd/user/google-drive.service
systemctl --user enable google-drive
systemctl --user start google-drive
mkdir ~/Google\ Drive

