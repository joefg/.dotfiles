# Aliases
alias aliases="$EDITOR ~/.aliases.zsh"
alias dotfiles="cd ~/.dotfiles"

alias ls="ls --color=auto"
alias ll="ls -alF"

alias ..="cd ../"
alias ~="cd ~"
alias open="xdg-open"

# Private aliases
if [ -r ~/.aliases.zsh ]; then
  source ~/.aliases.zsh
fi
