#!/usr/bin/env bash

if [ -r /usr/bin/git ]; then
    # using main for default branch
    git config --global init.defaultBranch main

    # lol - pretty git log oneline
    git config --global alias.lol "log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"

    # gl - show config
    git config --global alias.gl 'config --global -l'

    # checkout, bramch, commit, status, show
    git config --global alias.co 'checkout'
    git config --global alias.br 'branch'
    git config --global alias.ci 'commit'
    git config --global alias.st 'status'
    git config --global alias.sh 'show'
fi
