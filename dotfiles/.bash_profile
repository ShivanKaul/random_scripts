# Prompt
export PS1="\[\e[1;32m\]\w\[\e[0m\] \[\e[1;31m\]#\[\e[0m\] "

if [ -f /usr/local/etc/bash_completion ]; then
    . /usr/local/etc/bash_completion
fi

# Aliases
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi
# Project related env vars
if [ -f ~/.bash_projects ]; then
    . ~/.bash_projects
fi

# Sublime
export EDITOR='subl -w'

# Rbenv
eval "$(rbenv init -)"