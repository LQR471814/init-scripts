#!/bin/bash

sudo -v ; curl https://rclone.org/install.sh | sudo bash
echo "make sure you name the google drive integration 'gdrive'"
rclone config

mkdir ~/Documents/sensitive

echo "#!/bin/zsh

ensure_success() {
    if [ \$? -eq 0 ]; then
        echo 'success.'
    else
        rclone config reconnect gdrive:
    fi
}

if [ \$1 = 'pull' ]; then
    rclone sync 'gdrive:sensitive/' ~/Documents/sensitive
    ensure_success
elif [ \$1 = 'push' ]; then
    rclone sync ~/Documents/sensitive 'gdrive:sensitive/'
    ensure_success
else
    echo \"invalid arguments, you should do 'gdrive push' or 'gdrive pull'\"
    exit 1
fi" > ~/bin/gdrive
chmod +x ~/bin/gdrive

echo "you can now push or pull the keepassxc database with 'gdrive push' or 'gdrive pull'"

