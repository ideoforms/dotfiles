export PS1='(\[\e[1;37m\]$(date +%H%M)\[\e[0m\])$(__git_ps1 | tr -d " " | sed s,feature/,,)(\[\e[1;37m\]\h\[\e[0m\]:\[\e[1;32m\]\W\[\e[0m\])\[\e[1m\]\$\[\e[0m\] '
export PATH=/usr/local/bin:$PATH:$HOME/bin:$HOME/Dropbox/Code/bin
export HISTSIZE=100000
export PYTHONSTARTUP=~/.pythonrc
export PYTHONPATH=.:$PYTHONPATH

alias ls="ls -G"
alias vi=vim
