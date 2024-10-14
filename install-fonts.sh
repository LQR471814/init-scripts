curl -L -o monaspace.zip https://github.com/githubnext/monaspace/releases/download/v1.101/monaspace-v1.101.zip
unzip -qq monaspace.zip
rm monaspace.zip
rm -rf __MACOSX
cd monaspace-v1.101
./util/install_linux.sh
cd ..
rm -rf monaspace-v1.101

curl -L -o jetbrainsmono.zip https://github.com/ryanoasis/nerd-fonts/releases/download/v3.2.1/JetBrainsMono.zip
unzip -qq jetbrainsmono.zip -d jetbrainsmono
mkdir -p ~/.local/share/fonts
mv JetBrainsMonoNerdFont-Regular.ttf ~/.local/share/fonts/
mv JetBrainsMonoNerdFont-Bold.ttf ~/.local/share/fonts/
mv JetBrainsMonoNerdFont-Italic.ttf ~/.local/share/fonts/
rm -rf jetbrainsmono
rm jetbrainsmono.zip
