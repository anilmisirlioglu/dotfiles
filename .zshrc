# Fig pre block. Keep at the top of this file.
export PATH="${PATH}:${HOME}/.local/bin"
eval "$(fig init zsh pre)"

# set default language to english
# export LC_ALL=C

export ZSH="/Users/anil.misirlioglu/.oh-my-zsh"

# ZSH Theme
ZSH_THEME="lambda-gitster"

# ZSH Plugins
plugins=(
    git
    ssh-agent
    zsh-autosuggestions
)

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

# Load secret configurations (there are things that should remain hidden inside 🙂)
[ -f ~/.zsh_secrets ] && source ~/.zsh_secrets

# Zeus CLI
[ -f ~/.zeus ] && source ~/.zeus

# ZSH
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

source $HOME/Personal/tools/zsh-colored-man-pages.zsh

export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin
export PATH="${KREW_ROOT:-$HOME/.krew}/bin:$PATH"

[[ /usr/local/bin/kubectl ]] && source <(kubectl completion zsh)

source /Users/anil.misirlioglu/.gvm/scripts/gvm

export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/anil.misirlioglu/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/anil.misirlioglu/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/anil.misirlioglu/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/anil.misirlioglu/google-cloud-sdk/completion.zsh.inc'; fi

# Fig post block. Keep at the bottom of this file.
eval "$(fig init zsh post)"

