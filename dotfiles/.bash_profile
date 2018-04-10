export PS1='\[\e[31m\]($(hostname)) \[\e[1;32m\]\w\[\e[1;31m\]$(parse_git_branch) \$\[\e[0m\] '
parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

source ~/.git-completion.bash

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

# Haskell
export PATH="$HOME/Library/Haskell/bin:$PATH"


#export JAVA_HOME=`/usr/libexec/java_home -v 1.8`
#export PATH=$JAVA_HOME/bin:$PATH

# Sublime
export EDITOR='subl -w'
#export PATH="`brew --prefix`/bin:$PATH"
export PYTHONPATH=/usr/local/lib/python2.7/site-packages:$PYTHONPATH

#eval "$(rbenv init -)"

### Go
export GOPATH=$HOME/private/go
export PATH=$PATH:$GOPATH/bin

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

# Setting PATH for Python 3.4
# The orginal version is saved in .bash_profile.pysave
export PATH="/Library/Frameworks/Python.framework/Versions/3.4/bin:$PATH"

# Wisdom
#fortune | cowsay -f tux | lolcat
# fortune | lolcat

# Vim and MacVim
#alias vim='/Applications/MacVim.app/Contents/MacOS/Vim'
#alias vi='/Applications/MacVim.app/Contents/MacOS/Vim'

# Tinfoil
HOMEBREW_NO_ANALYTICS=1

test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"

# tmux
function cch {
    ssh -t $@ "tmux -CC new -A -s foo"
}

# Let forward searching work as well - Ctrl + S
#stty -ixon

#hist import

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*


source ~/bash_startup.in

export PATH="$HOME/.cargo/bin:$PATH"

# added by Anaconda2 5.0.1 installer
export PATH="/anaconda2/bin:$PATH"
