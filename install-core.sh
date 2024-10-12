# core utils
sudo apt-get install git curl clang cmake make pkg-config ripgrep fd-find -y

# github cli
(type -p wget >/dev/null || (sudo apt update && sudo apt-get install wget -y)) \
&& sudo mkdir -p -m 755 /etc/apt/keyrings \
&& wget -qO- https://cli.github.com/packages/githubcli-archive-keyring.gpg | sudo tee /etc/apt/keyrings/githubcli-archive-keyring.gpg > /dev/null \
&& sudo chmod go+r /etc/apt/keyrings/githubcli-archive-keyring.gpg \
&& echo "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/githubcli-archive-keyring.gpg] https://cli.github.com/packages stable main" | sudo tee /etc/apt/sources.list.d/github-cli.list > /dev/null \
&& sudo apt update \
&& sudo apt install gh -y
gh auth login

read -p "enter your github noreply email (go to 'https://github.com/settings/emails'):" gh_email
git config --global user.email $gh_email
read -p "enter your github username:" gh_username
git config --global user.name $gh_username

# flatpak
sudo apt-get install flatpak -y
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo

# other tools
sudo apt-get install gimp xsel cloc ffmpeg -y

# yt-dlp
curl -o ~/bin/yt-dlp -L https://github.com/yt-dlp/yt-dlp/releases/latest/download/yt-dlp
chmod a+rx ~/bin/yt-dlp

# tmux
sudo apt-get install tmux -y
git clone https://github.com/LQR471814/dotconfig.tmux.git ~/.config/tmux

# zsh
sudo apt-get install zsh -y
mkdir -p ~/.zsh
git clone https://github.com/sindresorhus/pure.git ~/.zsh/pure
git clone https://github.com/softmoth/zsh-vim-mode.git ~/.zsh/vim-mode
git clone https://github.com/kutsan/zsh-system-clipboard ~/.zsh/clipboard
cp .zshrc ~/.zshrc
chsh -s $(which zsh)
sudo chsh -s $(which zsh)

