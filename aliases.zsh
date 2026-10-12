alias c="clear"
alias ll="ls -AhlF"
[[ $OSTYPE == darwin* ]] && alias ll="ls -AhlFG"
alias reloadshell="source $HOME/.zshrc"
alias dotfiles="cd $DOTFILES"

if [[ $OSTYPE == darwin* ]]; then
  # Homebrew: update deliberately, review what's outdated before upgrading
  alias brewup="brew update && brew outdated"
  alias brewsync="brew bundle install && brew bundle cleanup"   # cleanup is a dry run; add --force to apply
fi
