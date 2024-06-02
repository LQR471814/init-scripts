#!/bin/bash

goto() {
    label=$1
    cmd=$(sed -En "/^[[:space:]]*#[[:space:]]*$label:[[:space:]]*#/{:a;n;p;ba};" "$0")
    eval "$cmd"
    exit
}

start=${1:-start}
goto "$start"

#start:#
if [ -f ./AT_POSTLOGIN_INSTALL ]; then
    goto post_login_install
fi

sudo apt-get update

mkdir ~/bin

./init-tools.sh
./init-terminal.sh
./init-services.sh
./init-firefox.sh
./init-apps.sh
./init-gnome.sh

#post_login_install:#
./postlogin.sh

