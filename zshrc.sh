source ~/.config/zsh/base_zshrc.sh

# cargo
. "$HOME/.cargo/env"

# go
export PATH="$PATH:$HOME/go/bin"

# nvm
load-nvm() {
    export NVM_DIR=~/.nvm
    [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh" # This loads nvm
}
nvm() {
    unset -f nvm
    load-nvm
    nvm "$@"
}
node() {
    unset -f node
    load-nvm
    node "$@"
}
npm() {
    unset -f npm
    load-nvm
    npm "$@"
}
pnpm() {
    unset -f pnpm
    load-nvm
    pnpm "$@"
}
yarn() {
    unset -f yarn
    load-nvm
    yarn "$@"
}

# nvim
export PATH="$PATH:/opt/nvim-linux64/bin"
export VISUAL="nvim" # set nvim as default editor
export EDITOR="$VISUAL"

