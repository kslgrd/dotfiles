#!/usr/bin/env bash
# Symlink dotfiles into $HOME. Works on macOS and in Dev Containers (VS Code runs
# install.sh from its cloned dotfiles repo). Safe to re-run; never overwrites real files.
set -euo pipefail
D="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd -P)"

link() { # link <source> <target>
  mkdir -p "$(dirname "$2")"
  if [[ -e $2 && ! -L $2 ]]; then echo "skip (exists, not a symlink): $2" >&2; return; fi
  ln -sfn "$1" "$2"
}

link "$D/.zshrc"                    "$HOME/.zshrc"
link "$D/.vimrc"                    "$HOME/.vimrc"
link "$D/.config/git/config"        "$HOME/.config/git/config"
link "$D/.config/git/ignore"        "$HOME/.config/git/ignore"
link "$D/.config/starship.toml"     "$HOME/.config/starship.toml"
link "$D/.config/tmux/tmux.conf"    "$HOME/.config/tmux/tmux.conf"
[[ $OSTYPE == darwin* ]] && link "$D/.config/iterm2" "$HOME/.config/iterm2"
exit 0
