# get current status of git repo
function parse_git_dirty {
  local porcelain line statuses ahead bits
  porcelain=$(git status --porcelain 2>/dev/null)
  if [ -z "$porcelain" ]; then
    echo ""
    return
  fi
  statuses=''
  while IFS= read -r line; do
    statuses+="${line%% *}"$'\n'
  done <<<"$porcelain"
  bits=''
  case "$statuses" in
    *R*) bits=">${bits}";;
  esac
  ahead=$(git rev-list --count "@{upstream}..HEAD" 2>/dev/null)
  if [ -n "$ahead" ] && [ "$ahead" -gt 0 ]; then
    bits="*${bits}"
  fi
  case "$statuses" in
    *A*) bits="+${bits}";;
  esac
  case "$statuses" in
    *'??'*) bits="?${bits}";;
  esac
  case "$statuses" in
    *D*) bits="x${bits}";;
  esac
  case "$statuses" in
    *M*) bits="!${bits}";;
  esac
  if [ -n "$bits" ]; then
    echo " ${bits}"
  else
    echo ""
  fi
}

# get current branch in git repo
function parse_git_branch() {
  local BRANCH STAT
  BRANCH=$(git symbolic-ref --short HEAD 2>/dev/null)
  if [ -n "$BRANCH" ]; then
    STAT=$(parse_git_dirty)
    echo "(${BRANCH}${STAT}) "
  else
    echo ""
  fi
}

if [ -x /usr/bin/starship ] && [ -z $NO_STARSHIP ] && [ -z $STARSHIP_SESSION_KEY ];then
  eval "$(starship init bash)"
else
  RCol='\[\e[m\]'    # reset colour
  Red='\[\e[0;31m\]' # red
  Gre='\[\e[0;32m\]' # green
  Yel='\[\e[0;33m\]' # yellow

  PS1=""
  PS1+="${RCol}"
  PS1+="${Gre}\u@\h${RCol}:${Yel}\w ${RCol}\`parse_git_branch\`\\$ "
fi
