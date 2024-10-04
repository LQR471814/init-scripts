#!/bin/bash

sudo apt-get update

mkdir ~/bin

if [ -f ./POSTLOGIN_SCRIPT ]; then
    cat POSTLOGIN_SCRIPT | xargs source
else
    cd tools && ./init.sh && cd ..
    cd terminal && ./init.sh && cd ..
    cd services && ./init.sh && cd ..
    cd apps && ./init.sh && cd ..
    cd gnome && ./init.sh && cd ..
    cd emacs && ./init.sh && cd ..
    cd mail && ./init.sh && cd ..
fi

