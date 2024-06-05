#!/bin/bash

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

