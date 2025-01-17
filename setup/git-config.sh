#!/usr/bin/env bash

if [ -r /usr/bin/git ]; then
    # using main for default branch
    git config --global init.defaultBranch main

    # lol - pretty git log oneline
    git config --global alias.lol "log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"

    # shorthands
    git config --global alias.sh 'show'
    git config --global alias.st 'status'
    git config --global alias.br 'branch'
    git config --global alias.co 'checkout'
    git config --global alias.sw 'switch'
    git config --global alias.rs 'restore'
    git config --global alias.cm 'commit'
    git config --global alias.gl 'config --global -l'

    # commit --verbose by default
    git config --global commit.verbose true

    if [ -r /usr/bin/nvim ]; then
        # use neovim as the default editor
        git config --global core.editor nvim

        # use neovim as a difftool
        git config --global merge.tool nvimdiff
        git config --global mergetool.keepBackup false
    elif [ -r /usr/bin/vim ]; then
        # use vim as the default editor
        git config --global core.editor vim

        # use vimdiff as a difftool
        git config --global merge.tool vimdiff
        git config --global mergetool.keepBackup false
    fi

    if [ -r /usr/bin/difft ]; then
        # if we have difftastic, add alises which use it but otherwise leave diff alone
        git config --global alias.difftl '!f() { GIT_EXTERNAL_DIFF=difft git log -p --ext-diff $@; }; f'
        git config --global alias.difft '!f() { GIT_EXTERNAL_DIFF=difft git diff; }; f'
        git config --global alias.diffts '!f() { GIT_EXTERNAL_DIFF=difft git show HEAD --ext-diff; }; f'
    fi
fi
