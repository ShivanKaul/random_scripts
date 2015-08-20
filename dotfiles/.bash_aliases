#!/usr/bin/env bash

alias ls="ls -G"
alias ll="ls -alG"

alias rebase-head='git rebase -i HEAD~2'
alias fetch-master='git fetch origin master'
alias rebase-master='git rebase -i origin/master'
alias src='source ~/.bash_profile'
alias last-commit='git rev-parse HEAD'