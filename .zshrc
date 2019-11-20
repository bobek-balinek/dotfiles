export GOPATH=$HOME/go
export GOPRIVATE=github.com/bobek-balinek/*
export PATH=$GOPATH/bin:$PATH
export COPYFILE_DISABLE=1

# load custom executable functions
for function in ~/.zsh/functions/*; do
  source $function
done

# load all config scripts
for config in ~/.zsh/config/*; do
  source $config
done
