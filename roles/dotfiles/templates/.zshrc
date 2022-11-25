# enable comment in interactive shell
setopt interactive_comments

# open command using ^b
autoload edit-command-line
zle -N edit-command-line
bindkey '^b' edit-command-line

export EDITOR=nvim

alias z=zoxide
alias lg='lazygit'
alias .=source

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
eval "$(/opt/homebrew/bin/brew shellenv)"
eval "$(zoxide init zsh)"
eval "$(starship init zsh)"
eval "$(navi widget zsh)"

# google cloud sdk
source "$(brew --prefix)/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.zsh.inc"
source "$(brew --prefix)/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.zsh.inc"

# java config
export GROOVY_HOME=/opt/homebrew/opt/groovy/libexec

# load zshrc rg
source {{ home }}/.zshrc-rg

# load zsh auto autosuggestions
# should be in the end of config
source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh