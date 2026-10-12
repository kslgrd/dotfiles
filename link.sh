#!/usr/bin/env bash
# Symlink dotfiles into $HOME. Safe to re-run; refuses to overwrite real files.
set -euo pipefail
D="$HOME/.dotfiles"

link() { # link <source> <target>
  mkdir -p "$(dirname "$2")"
  if [[ -e $2 && ! -L $2 ]]; then echo "skip (exists, not a symlink): $2" >&2; return; fi
  ln -sfn "$1" "$2"
}

link "$D/.zshrc"                    "$HOME/.zshrc"
link "$D/.vimrc"                    "$HOME/.vimrc"
link "$D/.gitignore_global"         "$HOME/.gitignore_global"
link "$D/.config/git/config"        "$HOME/.config/git/config"
link "$D/.config/starship.toml"     "$HOME/.config/starship.toml"
link "$D/.config/tmux/tmux.conf"    "$HOME/.config/tmux/tmux.conf"
link "$D/.config/iterm2"            "$HOME/.config/iterm2"
