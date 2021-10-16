# set default language to english
# export LC_ALL=C

export ZSH="/Users/anil.misirlioglu/.oh-my-zsh"

# ZSH Theme
ZSH_THEME="robbyrussell"

# ZSH Plugins
plugins=(git ssh-agent)

# ZSH
source $ZSH/oh-my-zsh.sh

export IDES=$HOME/Personal/tools/ide

# default editor
export EDITOR=vim

# GPG TTY
export GPG_TTY=$(tty)

# go sum db off
export GOSUMDB=off

# Reload the zsh-completions
autoload -U compinit && compinit

# z.sh completion
[ -f $HOME/Personal/tools/z.sh ] && source $HOME/Personal/tools/z.sh

# Load functions
[ -f ~/.zsh_functions ] && source ~/.zsh_functions

# Load alises
[ -f ~/.zsh_aliases ] && source ~/.zsh_aliases

# ZSH
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin

[[ /usr/local/bin/kubectl ]] && source <(kubectl completion zsh)

source /Users/anil.misirlioglu/.gvm/scripts/gvm

export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm