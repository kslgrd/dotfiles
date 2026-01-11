# Path to your dotfiles.
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

eval "$(starship init zsh)"

ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#6C7A7C"
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh
autoload -Uz compinit && compinit
