#!/bin/bash

sudo apt install docker.io docker-doc docker-compose docker-compose-v2 containerd runc
sudo usermod -aG docker $USER

# setup buildx
curl -O buildx -L https://github.com/docker/buildx/releases/download/v0.15.0/buildx-v0.15.0.linux-amd64
mkdir -p ~/.docker/cli-plugins
mv buildx ~/.docker/cli-plugins/docker-buildx
chmod +x ~/.docker/cli-plugins/docker-buildx

