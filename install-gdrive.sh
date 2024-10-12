sudo -v ; curl https://rclone.org/install.sh | sudo bash
echo "make sure you name the google drive integration 'gdrive'"
rclone config

mkdir ~/gdrive-shared

echo "#!/bin/zsh

ensure_success() {
    if [ \$? -eq 0 ]; then
        echo 'success.'
    else
        rclone config reconnect gdrive:
    fi
}

if [ \$1 = 'pull' ]; then
    rclone sync 'gdrive:shared/' ~/gdrive-shared
    ensure_success
elif [ \$1 = 'push' ]; then
    rclone sync ~/gdrive-shared 'gdrive:shared/'
    ensure_success
else
    echo \"invalid arguments, you should do 'gdrive push' or 'gdrive pull'\"
    exit 1
fi" > ~/bin/gdrive
chmod +x ~/bin/gdrive

echo "you can now push or pull files inside ~/gdrive-shared with 'gdrive push' or 'gdrive pull'"
