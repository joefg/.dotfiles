#!/usr/bin/env bash
#
# git-config.sh — idempotently install a set of global git configuration.
#
# Exit codes:
#   0  success
#   1  fatal error (git missing, config not writable, ...)

set -euo pipefail

log() { printf 'git-config: %s\n' "$*" >&2; }
die() { log "error: $*"; exit 1; }
cfg() { git config --global "$@"; }

# --- prerequisites -----------------------------------------------------------

command -v git >/dev/null 2>&1 || die "git is not installed or not in PATH"

cfg init.defaultBranch main

# lol - pretty git log oneline
LOL_ALIAS="log --graph \
  --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' \
  --abbrev-commit"
cfg alias.lol "$LOL_ALIAS"

# ui - branches in columns, ordered by committer date
cfg column.ui auto
cfg branch.sort -committerdate

# listing tags - sort by version:refname
cfg tag.sort version:refname

# shorthands
cfg alias.fixup "commit --fixup HEAD"
cfg alias.squash "commit --squash HEAD"

# commit --verbose by default
cfg commit.verbose true

# editor / difftool: prefer nvim, fall back to vim
if command -v nvim >/dev/null 2>&1; then
    EDITOR_CMD=nvim
    MERGE_TOOL=nvimdiff
elif command -v vim >/dev/null 2>&1; then
    EDITOR_CMD=vim
    MERGE_TOOL=vimdiff
fi

if [ -n "${EDITOR_CMD:-}" ]; then
    # use the detected editor as the default editor
    cfg core.editor "$EDITOR_CMD"

    # use the matching diff tool
    cfg merge.tool "$MERGE_TOOL"
    cfg mergetool.keepBackup false
else
    log "neither nvim nor vim found; core.editor left untouched"
fi

# create a new remote branch automatically on push
cfg push.autoSetupRemote true

# better diffs
# - show renames with a prefix (i/ for index, w/ for working directory,
#   c/ for commit.
# - includes file renames in diffs.
# - show code moves in colour
cfg diff.mnemonicPrefix true
cfg diff.renames true
cfg diff.colorMoved true

# if we have difftastic, add aliases which use it but otherwise leave diff alone
if command -v difft >/dev/null 2>&1; then
    # alias values are parsed by a shell, so they must be self-quoted; "$@"
    # passes any extra arguments through to the underlying git command.
    cfg alias.difftl '!f() { GIT_EXTERNAL_DIFF=difft git log -p --ext-diff "$@"; }; f'
    cfg alias.difft '!f() { GIT_EXTERNAL_DIFF=difft git diff "$@"; }; f'
    cfg alias.diffts '!f() { GIT_EXTERNAL_DIFF=difft git show HEAD --ext-diff; }; f'
fi

# Better commit messages via template.
# Quoted heredoc ('EOF') so nothing is expanded; written to $HOME explicitly
# (tilde expansion can be surprising depending on context).
cat <<'EOF' > "$HOME/.gitmessage"
# <type>(<optional scope>): <description>
#
# <Optional body: explain what changed and why.>
#
# <Optional footer(s), e.g. Closes: #123>
#
# Types: feature (or feat) and fix (bug fix) are defined by the spec.
# Common additions: build, chore, ci, docs, perf, refactor, revert,
# style, test.
#
# No scope? Remove "(<optional scope>)" including the brackets.
#
# Breaking change: add ! before the colon, e.g. feat(api)!: ...
# and/or add a footer: BREAKING CHANGE: <description>
#
# Assisted by a language model? Add: Assisted-by: <model-name>
#
# Refer to <https://www.conventionalcommits.org/en/v1.0.0/> for
# more details.
EOF

cfg commit.template "$HOME/.gitmessage"

log "done"
