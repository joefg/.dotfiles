if [ -r $HOME/.dvm ]; then
  export DVM_DIR="$HOME/.dvm"
  export PATH="$DVM_DIR/bin:$PATH"
fi

if [ -r $HOME/.nvm ]; then
  export NVM_DIR="$HOME/.nvm"
  [ -s "$NVM_DIR"/bash_completion ] && \. "$NVM_DIR"/bash_completion
  alias nvm="unalias nvm; [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"; nvm $@"
fi

if [ -r $HOME/.bun ]; then
  export BUN_INSTALL="$HOME/.bun"
  export PATH="$BUN_INSTALL/bin:$PATH"
fi
