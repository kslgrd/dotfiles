# Resolve the repo location through the symlink (~/.dotfiles on a Mac, wherever it's cloned in a container)
export DOTFILES="${${(%):-%x}:A:h}"

export GPG_TTY=$(tty)
export EDITOR=vim
HISTSIZE=1000000000
SAVEHIST=$HISTSIZE
setopt EXTENDED_HISTORY SHARE_HISTORY HIST_IGNORE_DUPS autocd
autoload -Uz compinit && compinit

if [[ $OSTYPE == darwin* ]]; then
  export LANG=en_CA.UTF-8
  [[ -z $SSH_CONNECTION ]] && export EDITOR='code --wait'
  export HOMEBREW_BUNDLE_FILE="$DOTFILES/.config/brewfile/Brewfile"
  export HOMEBREW_NO_AUTO_UPDATE=1      # update on purpose with `brewup`
  export HOMEBREW_NO_ANALYTICS=1
  export HOMEBREW_NO_INSECURE_REDIRECT=1
  export HOMEBREW_CASK_OPTS=--require-sha
fi

# Only wire up tools that exist, so this file is safe in bare containers
(( $+commands[starship] )) && eval "$(starship init zsh)"
(( $+commands[zoxide] ))   && eval "$(zoxide init zsh)"
(( $+commands[fzf] ))      && source <(fzf --zsh 2>/dev/null)
source "$DOTFILES/aliases.zsh"
