#!/bin/bash

# setup core dev utils
sudo apt-get install git curl clang cmake make pkg-config -y

# setup rust
curl -L -o install-rust.sh --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs
chmod +x install-rust.sh
./install-rust.sh -y
rm install-rust.sh

# setup golang
sudo apt-get install golang -y
mkdir -p go/src

# setup nodejs
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # init nvm
nvm install 22
corepack enable pnpm

# setup go-based tools
go install github.com/jesseduffield/lazygit@latest

# setup cargo-based tools
cargo install ripgrep

# setup gh-cli
(type -p wget >/dev/null || (sudo apt update && sudo apt-get install wget -y)) \
&& sudo mkdir -p -m 755 /etc/apt/keyrings \
&& wget -qO- https://cli.github.com/packages/githubcli-archive-keyring.gpg | sudo tee /etc/apt/keyrings/githubcli-archive-keyring.gpg > /dev/null \
&& sudo chmod go+r /etc/apt/keyrings/githubcli-archive-keyring.gpg \
&& echo "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/githubcli-archive-keyring.gpg] https://cli.github.com/packages stable main" | sudo tee /etc/apt/sources.list.d/github-cli.list > /dev/null \
&& sudo apt update \
&& sudo apt install gh -y
gh auth login

read -p "enter your github noreply email (go to 'https://github.com/settings/emails'):" gh_email
git config --global user.email $gh_email
read -p "enter your github username:" gh_username
git config --global user.name $gh_username

# setup flatpak
sudo apt-get install flatpak -y
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo

# setup neovim
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux64.tar.gz
sudo rm -rf /opt/nvim
sudo tar -C /opt -xzf nvim-linux64.tar.gz
git clone https://github.com/LQR471814/dotconfig.nvim.git ~/.config/nvim

# setup tmux
sudo apt-get install tmux -y
git clone https://github.com/LQR471814/dotconfig.tmux.git ~/.config/tmux

# setup non-essential tools
sudo apt-get install gimp xsel cloc -y

# setup ffmpeg
sudo apt-get install ffmpeg -y

# setup yt-dlp and music-dlp
curl -o ~/bin/yt-dlp -L https://github.com/yt-dlp/yt-dlp/releases/latest/download/yt-dlp
chmod a+rx ~/bin/yt-dlp

