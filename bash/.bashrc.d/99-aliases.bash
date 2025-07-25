# Aliases
alias aliases="$EDITOR ~/.aliases.bash"
alias dotfiles="cd ~/.dotfiles"

alias ll='ls -alFh'

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    alias dir='dir --color=auto'
    alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# shortcuts
alias ..='cd ../'
alias ~='cd ~'
alias cls='clear'

alias dotfiles="cd ~/.dotfiles"

alias ..="cd ../"
alias ~="cd ~"
alias open="xdg-open"

# Networking
alias publicip="dig +short txt ch whoami.cloudflare @1.0.0.1"

# A simple HTTP server
alias webserv="python3 -m http.server"

# Private aliases
if [ -r ~/.aliases.bash ]; then
  source ~/.aliases.bash
fi
