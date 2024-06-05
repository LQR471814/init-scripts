#!/bin/bash

curl -L -o install-rust.sh --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs
chmod +x install-rust.sh
./install-rust.sh -y
rm install-rust.sh
