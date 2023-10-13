# Lines configured by zsh-newuser-install

# Exports
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000

# Default editor
if [ -r /usr/bin/nvim ]; then
 export EDITOR=/usr/bin/nvim
 export VISUAL=/usr/bin/nvim
fi

unsetopt beep

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

# fzf
if [ -r /usr/bin/fzf ]; then
  source /usr/share/fzf/key-bindings.zsh
  source /usr/share/fzf/completion.zsh
fi

# nnn
if [ -r /usr/local/bin/nnn ]; then
  local nnn_plugs='';
  if [ -r /usr/bin/git ]; then
    nnn_plugs=$nnn_plugs'g:!|git log --oneline --graph --all;d:!|git diff;s:!|git status -v;';
  fi;
  export NNN_PLUG=$nnn_plugs;
fi

# Autoload modules
autoload -Uz compinit
autoload -Uz vcs_info
compinit
export CLICOLOR=1
export LSCOLORS=ExGxBxDxCxEgEdxbxgxcxd

# PROMPT
precmd() { vcs_info }
precmd_functions+=( precmd )
setopt prompt_subst

## customize vcs_info
zstyle ':vcs_info:git*:*' check-for-changes true
zstyle ':vcs_info:git*:*' unstagedstr '|U'
zstyle ':vcs_info:git*:*' stagedstr '|≠'

# enable hooks, requires Zsh >=4.3.11
if [[ $ZSH_VERSION == 4.3.<11->* || $ZSH_VERSION == 4.<4->* || $ZSH_VERSION == <5->* ]] ; then
  # hook for untracked files
  +vi-untracked() {
    if [[ $(git rev-parse --is-inside-work-tree 2>/dev/null) == 'true'  ]] && \
       [[ -n $(git ls-files --others --exclude-standard) ]] ; then
       hook_com[staged]+='|☂'
    fi
  }

  # unpushed commits
  +vi-outgoing() {
    local gitdir="$(git rev-parse --git-dir 2>/dev/null)"
    [ -n "$gitdir" ] || return 0

    if [ -r "${gitdir}/refs/remotes/git-svn" ] ; then
      local count=$(git rev-list remotes/git-svn.. 2>/dev/null | wc -l)
    else
      local branch="$(cat ${gitdir}/HEAD 2>/dev/null)"
      branch=${branch##*/heads/}
      local count=$(git rev-list remotes/origin/${branch}.. 2>/dev/null | wc -l)
    fi

    if [[ "$count" -gt 0 ]] ; then
      hook_com[staged]+="|↑$count"
    fi
  }

  # hook for stashed files
  +vi-stashed() {
    if git rev-parse --verify refs/stash &>/dev/null ; then
      hook_com[staged]+='|s'
    fi
  }

  zstyle ':vcs_info:git*+set-message:*' hooks stashed untracked outgoing
fi

# required for *formats in vcs_info, see below
BLUE="%F{blue}"
RED="%F{red}"
GREEN="%F{green}"
CYAN="%F{cyan}"
MAGENTA="%F{magenta}"
YELLOW="%F{yellow}"
WHITE="%F{white}"
NO_COLOR="%f"

# extend default vcs_info in prompt
zstyle ':vcs_info:*' actionformats " (${BLUE}%b${YELLOW}|${RED}%a%u%c${NO_COLOR})" "zsh: %r"
zstyle ':vcs_info:*' formats       " (${BLUE}%b%u%c${NO_COLOR}%})" "zsh: %r"

PROMPT='${GREEN}%n@%m${NO_COLOR}:%B${YELLOW}%~${NO_COLOR}%b$vcs_info_msg_0_ %B$%b '

if [ -r "$HOME/.dvm" ]; then
  export DVM_DIR="$HOME/.dvm"
  export PATH="$DVM_DIR/bin:$PATH"
fi

if [ -r "$HOME/.nvm" ]; then
  export NVM_DIR="$HOME/.nvm"
  [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
  [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
fi
