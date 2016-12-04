if [ -z "$PS1" ]; then
   return
fi

findfile() {
    find ~ -type f -name *$1*|grep $1 
}

finddir() {
find ~ -type d -name $1
    }

alias ls='ls -a'
alias du='du -d 1 -h'
alias find=findfile

export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad
export TERM=xterm-color
export CLICOLOR="YES"
export HOMEBREW_GITHUB_API_TOKEN=""
export PATH=$PATH:~/bin
export GIT_PS1_SHOWDIRTYSTATE=1
export PYTHONPATH="/opt/datadog-agent/agent:/opt/datadog-agent/agent/checks/libs:$PYTHONPATH"

ulimit -S -n 1024

# git prompt
PS1='\[\e[1;34m\]\w\[\e[m\] $(__git_ps1 "(%s)")\$ '
#PS1='\[\e[0;32m\]\u\[\e[m\] \[\e[1;34m\]\w\[\e[m\] \[\e[1;32m\]$(__git_ps1 "(%s)")$\[\e[m\] '
#PS1='\w$(__git_ps1 " (%s)")\$ '

# Make bash check its window size after a process completes
shopt -s checkwinsize
. ~/bin/git-completion.bash
. ~/bin/git-prompt.sh
