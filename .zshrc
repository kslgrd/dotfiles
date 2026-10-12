export DOTFILES="$HOME/.dotfiles"
export HOMEBREW_BUNDLE_FILE="$DOTFILES/.config/brewfile/Brewfile"
export HOMEBREW_NO_AUTO_UPDATE=1      # update on purpose with `brewup`
export HOMEBREW_NO_INSECURE_REDIRECT=1
export HOMEBREW_CASK_OPTS=--require-sha

export LANG=en_CA.UTF-8
export EDITOR='code --wait'
[[ -n $SSH_CONNECTION ]] && export EDITOR=vim
export GPG_TTY=$(tty)

HISTSIZE=1000000000
SAVEHIST=$HISTSIZE
setopt EXTENDED_HISTORY SHARE_HISTORY HIST_IGNORE_DUPS autocd

autoload -Uz compinit && compinit

eval "$(starship init zsh)"
eval "$(zoxide init zsh)"
source <(fzf --zsh)
source "$DOTFILES/aliases.zsh"
