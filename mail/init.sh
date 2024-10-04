#!/bin/bash
sudo apt install -y neomutt mutt-wizard mailsync

gpg --full-generate-key
echo "Enter your email address:"
read email
pass init "$email"
mw -a "$email"
mailsync

# workaround for https://github.com/LukeSmithxyz/mutt-wizard/issues/633
sudo sed -i "/^set smtp_authenticators/s/^/# /" /usr/local/share/mutt-wizard/mutt-wizard.muttrc

