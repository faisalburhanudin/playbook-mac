# homebrew need to be first so I can use homebrew bin, in this config
eval "$(/opt/homebrew/bin/brew shellenv)"

export GOPATH={{ home }}/workspace

export PATH=zopt/gnu-tar/libexec/gnubin:$PATH
export PATH=$PATH:/usr/local/go/bin:$GOPATH/bin
export PATH=$PATH:$HOME/.local/bin
export PATH=$PATH:$HOME/fvm/default/bin
export PATH=/opt/homebrew/opt/mysql-client/bin:$PATH