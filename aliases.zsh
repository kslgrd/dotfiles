# Shortcuts
alias c="clear"
alias cdiff="colordiff -y -s -w"
alias copypubkey="pbcopy < $HOME/.ssh/id_rsa.pub"
alias ll="/usr/local/opt/coreutils/libexec/gnubin/ls -AhlFo --color --group-directories-first"
alias reloadshell="source $HOME/.zshrc"
alias reloaddns="dscacheutil -flushcache && sudo killall -HUP mDNSResponder"

# Directories
alias dotfiles="cd $DOTFILES"
alias library="cd $HOME/Library"
alias sites="cd $HOME/Sites"
alias vault="cd $HOME/Vault"

# Functions
cless() {
  LESSOPEN='| source-highlight --failsafe --out-format=esc256 -o STDOUT -i %s 2>/dev/null ' less -R "$@"
}
