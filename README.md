# Dotfiles

Small on purpose: a terminal (zsh, starship, fzf, zoxide, tmux, git) plus a short Brewfile.
Real development happens in Dev Containers / Docker Sandbox.

## New machine

1. `xcode-select --install`, then install Homebrew from <https://brew.sh> (read the script first).
2. `git clone git@github.com:kslgrd/dotfiles.git ~/.dotfiles && ~/.dotfiles/link.sh`
3. `brew bundle` (uses `HOMEBREW_BUNDLE_FILE` from `.zshrc`; or pass `--file .config/brewfile/Brewfile`)

## Keeping Homebrew in check

- Auto-update is off. Run `brewup` to see what's outdated, then `brew upgrade` deliberately.
- `brewsync` installs the Brewfile and shows (dry run) anything installed that isn't in it.
- Casks must match their published checksum (`--require-sha`).
- Only official `homebrew/core` and cask taps; no third-party taps.

## Layout

| Path | Purpose |
| --- | --- |
| `.zshrc`, `aliases.zsh` | shell |
| `.config/{git,starship.toml,tmux,iterm2}` | tool config, linked by `link.sh` |
| `.config/brewfile/Brewfile` | everything installed via Homebrew |
