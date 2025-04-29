# Aliases
alias aliases="$EDITOR ~/.aliases.zsh"
alias dotfiles="cd ~/.dotfiles"

alias ls="ls --color=auto"
alias ll="ls -alFh"

alias ..="cd ../"
alias ~="cd ~"
alias open="xdg-open"

# Networking
alias publicip="dig +short txt ch whoami.cloudflare @1.0.0.1"

# Private aliases
if [ -r ~/.aliases.zsh ]; then
  source ~/.aliases.zsh
fi
