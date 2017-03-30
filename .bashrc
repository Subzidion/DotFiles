if [ -f /etc/bash_completion ]; then
	    . /etc/bash_completion
fi

xhost +local:root > /dev/null 2>&1

complete -cf sudo

shopt -s cdspell
shopt -s checkwinsize
shopt -s cmdhist
shopt -s dotglob
shopt -s expand_aliases
shopt -s extglob
shopt -s histappend
shopt -s hostcomplete
shopt -s nocaseglob

export PS1='[\u@\h \W]\$ '
export HISTSIZE=10000
export HISTFILESIZE=${HISTSIZE}
export HISTCONTROL=ignoreboth
export EDITOR=/usr/bin/vim
export BROWSER=/usr/bin/chromium

export GOPATH=/home/subzidion/work/Go
export ROSIE_HOME=/home/subzidion/work/rosie-pattern-language

PATH="$(ruby -e 'print Gem.user_dir')/bin:$PATH"

alias ls='ls -a --group-directories-first --time-style=+"%d.%m.%Y %H:%M" --color=auto -F'
alias ll='ls -l --group-directories-first --time-style=+"%d.%m.%Y %H:%M" --color=auto -F'
alias la='ls -la --group-directories-first --time-style=+"%d.%m.%Y %H:%M" --color=auto -F'
alias clear='clear;screenfetch'
alias grep='grep --color=tty -d skip'
alias cp="cp -i"                          # confirm before overwriting something
alias df='df -h'                          # human-readable sizes
alias free='free -m'                      # show sizes in MB
alias update='pacaur -Syu && sudo npm update -g'
alias wanip='dig +short myip.opendns.com @resolver1.opendns.com'

set -o vi

screenfetch

# added by travis gem
[ -f /home/subzidion/.travis/travis.sh ] && source /home/subzidion/.travis/travis.sh
