# nnn
if [ -r /usr/local/bin/nnn ]; then
  local nnn_plugs='';
  if [ -r /usr/bin/git ]; then
    nnn_plugs=$nnn_plugs'g:!|git log --oneline --graph --all;d:!|git diff;s:!|git status -v;';
  fi;
  export NNN_PLUG=$nnn_plugs;
fi
