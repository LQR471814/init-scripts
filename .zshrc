# persist history
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt appendhistory

# cargo
. "$HOME/.cargo/env"

# go
export PATH="$PATH:$HOME/go/bin"

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

# remove weird delay when pressing escape
bindkey -M vicmd '^[' undefined-key
bindkey -rM viins '^X'
bindkey -M viins '^X,' _history-complete-newer \
                 '^X/' _history-complete-older \
                 '^X`' _bash_complete-word
KEYTIMEOUT=1

# workaround: https://github.com/softmoth/zsh-vim-mode/issues/42
MODE_INDICATOR=

source "$HOME/.zsh/vim-mode/zsh-vim-mode.plugin.zsh"
source "$HOME/.zsh/clipboard/zsh-system-clipboard.plugin.zsh"

# n (nodejs version manager)
export N_PREFIX="$HOME/n"; [[ :$PATH: == *":$N_PREFIX/bin:"* ]] || PATH+=":$N_PREFIX/bin"  # Added by n-install (see http://git.io/n-install-repo).

# doom emacs CLI
export PATH="$PATH:$HOME/.config/emacs/bin"

lzg() {
    lazygit
}

