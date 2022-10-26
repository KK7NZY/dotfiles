export GPG_TTY=$(tty)
export N_PREFIX=$HOME/.n

export PATH="/usr/local/sbin:$PATH"
export PATH="$PATH/Users/$USER/.local/bin"
export PATH="$PATH:/Users/$USER/Library/Application Support/JetBrains/Toolbox"
export PATH=$N_PREFIX/bin:$PATH


if type brew &>/dev/null; then
  FPATH=$(brew --prefix)/share/zsh-completions:$FPATH

  autoload -U bashcompinit && bashcompinit
  autoload -Uz compinit
  compinit
fi

eval "$(register-python-argcomplete pipx)"

# source antidote
source ${ZDOTDIR:-~}/.antidote/antidote.zsh

# initialize plugins statically with ${ZDOTDIR:-~}/.zsh_plugins.txt
antidote load

autoload -Uz promptinit && promptinit && prompt pure

