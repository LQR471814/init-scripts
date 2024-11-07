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

echo "#!/bin/zsh

cp ~/gdrive-shared/Passwords.kdbx ~/Downloads/Passwords.kdbx.old

echo 'Pulling remote database...'
rclone sync 'gdrive:shared/' ~/gdrive-shared
if [ \$? -eq 0 ]; then
    echo 'success.'
else
    rclone config reconnect gdrive:
    exit 1
fi

echo 'Merging local and remote...'
keepassxc-cli merge -s ~/Downloads/Passwords.kdbx.old ~/gdrive-shared/Passwords.kdbx
mv ~/Downloads/Passwords.kdbx.old ~/gdrive-shared/Passwords.kdbx

echo 'Pushing merged database...'
rclone sync ~/gdrive-shared 'gdrive:shared/'
if [ \$? -eq 0 ]; then
    echo 'success.'
else
    rclone config reconnect gdrive:
    exit 1
fi" > ~/bin/keepassxc-sync
chmod +x ~/bin/keepassxc-sync

echo "you can now sync the passwords keepass database with 'keepassxc-sync'"
echo "you can now push or pull files inside ~/gdrive-shared with 'gdrive push' or 'gdrive pull'"
