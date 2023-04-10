HISTFILE=$HOME/.zsh_history
HISTSIZE=100000
SAVEHIST=1000000
# share .zshhistory
setopt inc_append_history
setopt share_history
setopt hist_ignore_all_dups
setopt hist_reduce_blanks
setopt hist_ignore_space