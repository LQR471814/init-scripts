# rye (python)
curl -sSf https://rye.astral.sh/get | bash
rye install ytmdl
rye install pipx
pipx install khal vdirsyncer yewtube 

# golang
sudo apt-get install golang -y
mkdir -p go/src

go install github.com/jesseduffield/lazygit@latest
go install golang.org/x/tools/cmd/goimports@latest

# node.js
curl -L https://bit.ly/n-install | bash

# rust
curl -L -o install-rust.sh --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs
chmod +x install-rust.sh
./install-rust.sh -y
rm install-rust.sh

# docker
sudo apt install docker.io docker-doc docker-compose docker-compose-v2 containerd runc
sudo usermod -aG docker $USER
curl -O buildx -L https://github.com/docker/buildx/releases/download/v0.15.0/buildx-v0.15.0.linux-amd64 # buildx
mkdir -p ~/.docker/cli-plugins
mv buildx ~/.docker/cli-plugins/docker-buildx
chmod +x ~/.docker/cli-plugins/docker-buildx

