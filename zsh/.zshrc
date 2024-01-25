# Exports
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000

# Options
unsetopt beep

# Default editor
if [ -r /usr/bin/nvim ]; then
 export EDITOR=/usr/bin/nvim
 export VISUAL=/usr/bin/nvim
fi

# Load our configurations from ~/.zshrc.d
local rcfile
for rcfile in ~/.zshrc.d/*.zsh; do
  source $rcfile
done
