#!/bin/bash

curl -L -o jetbrainsmono.zip https://github.com/ryanoasis/nerd-fonts/releases/download/v3.2.1/JetBrainsMono.zip
unzip -qq jetbrainsmono.zip -d jetbrainsmono
mkdir -p ~/.local/share/fonts
mv JetBrainsMonoNerdFont-Regular.ttf ~/.local/share/fonts/
mv JetBrainsMonoNerdFont-Bold.ttf ~/.local/share/fonts/
mv JetBrainsMonoNerdFont-Italic.ttf ~/.local/share/fonts/
rm -rf jetbrainsmono
rm jetbrainsmono.zip
