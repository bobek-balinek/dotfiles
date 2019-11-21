export GOPATH=$HOME/go
export GOPRIVATE=github.com/bobek-balinek/*
export PATH=$GOPATH/bin:$PATH
export COPYFILE_DISABLE=1

export ZSH=$HOME/.oh-my-zsh
export LSCOLORS='exfxcxdxbxegedabagacad'
export CLICOLOR=true

ZSH_THEME="robbyrussell"

plugins=(
  git
  golang
  docker
  docker-compose
  osx
  zsh-completions
  zsh-autosuggestions
  zsh-syntax-highlighting
  autoenv
)

# Path to oh-my-zsh script
source $ZSH/oh-my-zsh.sh

# load custom executable functions
for function in ~/.zsh/functions/*; do
  source $function
done

# load all config scripts
for config in ~/.zsh/config/*; do
  source $config
done
