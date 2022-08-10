# homebrew need to be first so I can use homebrew bin, in this config
eval "$(/opt/homebrew/bin/brew shellenv)"

# open command using ^b
autoload edit-command-line
zle -N edit-command-line
bindkey '^b' edit-command-line

export EDITOR=nvim
export GOPATH={{ home }}/workspace

alias z=zoxide
alias lg='lazygit'
alias .=source

export PATH=zopt/gnu-tar/libexec/gnubin:$PATH
export PATH=$PATH:/usr/local/go/bin:$GOPATH/bin
export PATH=$PATH:$HOME/.local/bin

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
eval "$(/opt/homebrew/bin/brew shellenv)"
eval "$(zoxide init zsh)"
eval "$(starship init zsh)"
eval "$(navi widget zsh)"

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/opt/homebrew/Caskroom/miniforge/base/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/opt/homebrew/Caskroom/miniforge/base/etc/profile.d/conda.sh" ]; then
        . "/opt/homebrew/Caskroom/miniforge/base/etc/profile.d/conda.sh"
    else
        export PATH="/opt/homebrew/Caskroom/miniforge/base/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

# google cloud sdk
source "$(brew --prefix)/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.zsh.inc"
source "$(brew --prefix)/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.zsh.inc"

# load zsh auto autosuggestions
# should be in the end of config
source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# load groovy
export GROOVY_HOME=/opt/homebrew/opt/groovy/libexec