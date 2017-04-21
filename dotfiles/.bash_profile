export PS1='\[\e[31m\]$(hostname) \[\e[1;32m\]\w\[\e[1;31m\]$(parse_git_branch) \$[\e[0m\] ' 
#export PS1="\[\e[1;32m\]\w\[\e[0m\]\[\e[1;31m\]\$(parse_git_branch) #\[\e[0m\] " 
parse_git_branch() {
	git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}



# who is using the laptop's iSight camera?
camerausedby() {
	echo "Checking to see who is using the iSight camera… 📷"
	usedby=$(lsof | grep -w "AppleCamera\|USBVDC\|iSight" | awk '{printf $2"\n"}' | xargs ps)
	echo -e "Recent camera uses:\n$usedby"
}

if [ -f /usr/local/etc/bash_completion ]; then
	. /usr/local/etc/bash_completion
fi

# Haskell
export PATH="$HOME/Library/Haskell/bin:$PATH"

# Aliases
if [ -f ~/.bash_aliases ]; then
	. ~/.bash_aliases
fi
# Project related env vars
if [ -f ~/.bash_projects ]; then
	. ~/.bash_projects
fi

export JAVA_HOME=`/usr/libexec/java_home -v 1.8`
export PATH=$JAVA_HOME/bin:$PATH

#export DOCKER_CERT_PATH=/Users/shivan/.boot2docker/certs/boot2docker-vm
#export DOCKER_TLS_VERIFY=1
#export DOCKER_HOST=tcp://192.168.59.103:2376

export KAFKA="192.168.99.100:9092"
export ZOOKEEPER="192.168.99.100:2181"

# new
#export DOCKER_HOST="tcp://192.168.99.101:2376"
#export DOCKER_CERT_PATH="/Users/shivan/.docker/machine/machines/default"
#export DOCKER_MACHINE_NAME="default"

# Sublime
export EDITOR='subl -w'
#export PATH="`brew --prefix`/bin:$PATH"
#export PYTHONPATH=/usr/local/lib/python2.7/site-packages:$PYTHONPATH

eval "$(rbenv init -)"

### Go
export GOPATH=$HOME/private/go
export PATH=$PATH:$GOPATH/bin

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

# Setting PATH for Python 3.4
# The orginal version is saved in .bash_profile.pysave
#export PATH="/Library/Frameworks/Python.framework/Versions/3.4/bin:$PATH"

# Wisdom
#fortune | cowsay -f tux | lolcat
fortune | lolcat

# Vim and MacVim
alias vim='/Applications/MacVim.app/Contents/MacOS/Vim'
alias vi='/Applications/MacVim.app/Contents/MacOS/Vim'

# Jekyll
alias serve="bundle exec jekyll serve"

# Ciena project
#export KAFKA_ADVERTISED_HOST_NAME=$(docker-machine ip default)

# Tinfoil
HOMEBREW_NO_ANALYTICS=1
export PATH="/usr/local/sbin:$PATH"

test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"

# tmux + iterm
function cch {
    ssh -t $@ "tmux -CC new -A -s foo"
}

# Let forward searching work as well - Ctrl + S
stty -ixon

