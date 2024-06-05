#!/bin/bash

# finish setting up wm
rm POSTLOGIN_SCRIPT
gnome-extensions enable paperwm@paperwm.github.com
gsettings set org.freedesktop.ibus.panel.emoji hotkey "['<Super>semicolon']" # to prevent conflicts

