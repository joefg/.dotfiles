# some ls aliases
alias ll='ls -alF'

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

alias aliases="$EDITOR ~/.aliases.bash"
alias dotfiles="cd ~/.dotfiles"

alias ..="cd ../"
alias ~="cd ~"
alias open="xdg-open"

# dump colours into terminal-- for development?
function dumpcolours(){
    for i in {0..255}; do printf "\x1b[38;5;${i}mcolour${i}\x1b[0m\n"; done
}
