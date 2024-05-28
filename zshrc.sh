source ~/.config/zsh/base_zshrc.sh

# cargo
. "$HOME/.cargo/env"

# go
export PATH="$PATH:$HOME/go/bin"

# nvim
export PATH="$PATH:/opt/nvim-linux64/bin"
export VISUAL="nvim" # set nvim as default editor
export EDITOR="$VISUAL"

