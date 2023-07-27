#!/usr/bin/env bash

if [ -r /usr/bin/git ]; then
    # using main for default branch
    git config --global init.defaultBranch main

    # lol - pretty git log oneline
    git config --global alias.lol "log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"

    # commit --verbose by default
    git config --global commit.verbose true

    # gl - show config
    git config --global alias.gl 'config --global -l'

    if [ -r /usr/bin/nvim ]; then
        # use neovim as the default editor
        git config --global core.editor nvim

        # use neovim as a difftool
        git config --global merge.tool nvimdiff
        git config --global mergetool.keepBackup false
    fi
fi
