#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

eval "$(thefuck --alias)"
alias l='ls -l --color=auto'
alias la='ls -al --color=auto'
alias dpl='drive pull --ignore-name-clashes --ignore-conflict  School/University/Year\ 2/Semester\ 1/'
alias won='systemctl start connman'
alias upd='sudo pacman -Syu'
alias school='cd && cd gdrive/School/University/Year\ 2/Semester\ 1/'

PS1='[\u@\h \W]\$ '
export GOPATH=$HOME/gopath
export PATH=$GOPATH:$GOPATH/bin:$PATH
