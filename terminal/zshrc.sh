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

# pnpm
export PNPM_HOME="/home/lqr471814/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

# local bin
export PATH="$PATH:$HOME/bin"

# pure prompt
fpath+=($HOME/.zsh/pure)
autoload -U promptinit; promptinit
prompt pure

# fix ctrl keys
bindkey "^[[1;5C" forward-word
bindkey "^[[1;5D" backward-word

source "$HOME/.zsh/vim-mode/zsh-vim-mode.plugin.zsh"
source "$HOME/.zsh/clipboard/zsh-system-clipboard.plugin.zsh"

