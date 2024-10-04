sudo apt install -y emacs fd-find shellcheck mu4e
npm install -g marked

go install github.com/x-motemen/gore/cmd/gore@latest
rye install isort
rye install pipenv
rye install pytest

git clone --depth 1 https://github.com/doomemacs/doomemacs ~/.config/emacs
~/.config/emacs/bin/doom install

