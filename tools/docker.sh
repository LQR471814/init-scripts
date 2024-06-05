#!/bin/bash

sudo apt install docker.io docker-doc docker-compose docker-compose-v2 containerd runc
sudo usermod -aG docker $USER
