export HISTSIZE=1000000000
export SAVEHIST=$HISTSIZE

export DOTFILES=$HOME/.dotfiles

# Fix for gpg signing git commits
export GPG_TTY=$(tty)

# You may need to manually set your language environment
export LC_ALL=en_CA.UTF-8
export LANG=en_CA.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='code'
fi

export HOMEBREW_BUNDLE_FILE=$DOTFILES/.config/brewfile/Brewfile

setopt EXTENDED_HISTORY
setopt autocd
autoload -Uz compinit && compinit

eval "$(starship init zsh)"
source <(fzf --zsh)
source "$DOTFILES/aliases.zsh"
