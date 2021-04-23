export ZSH=$HOME/.oh-my-zsh

# ZSG Theme
ZSH_THEME="robbyrussell"

# ZSH plugins
plugins=(git ssh-agent zsh-autosuggestions zsh-completions)

# ZSH
source $ZSH/oh-my-zsh.sh

export IDES='C:/tools/shells'
export GOPATH='/mnt/a/languages/go'

# default editor
export EDITOR=vim

# GPG TTY
export GPG_TTY=$(tty)

# symlink export for WSL2: https://superuser.com/a/1528227
export BROWSER=~/.local/bin/chrome 

# Global Go Path
export PATH=$PATH:/usr/local/go/bin:$GOPATH/bin

# Reload the zsh-completions
autoload -U compinit && compinit

# z.sh completion
[ -f /mnt/c/tools/shells/z.sh ] && source /mnt/c/tools/shells/z.sh

# Load functions
[ -f ~/.zsh_functions ] && source ~/.zsh_functions

# Load alises
[ -f ~/.zsh_aliases ] && source ~/.zsh_aliases

# Load secret configurations (there are things that should remain hidden inside 🙂)
[ -f ~/.zsh_secret ] && source ~/.zsh_secret

# Load FZF
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Load NVM
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
