#!/bin/bash

sudo apt install -y libvips
curl -o ezytdl.AppImage -L https://github.com/sylviiu/ezytdl/releases/download/2.4.2/ezytdl-linux.AppImage
./ezytdl.AppImage --no-sandbox

