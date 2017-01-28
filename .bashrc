#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

eval "$(thefuck --alias)"
alias l='ls -l --color=auto'
alias la='ls -al --color=auto'
alias dpl='drive pull School/University/Year\ 2/Semester\ 2/'
alias won='systemctl start connman'
alias upd='sudo pacman -Syu'
alias school='cd && cd gdrive/School/University/Year\ 2/Semester\ 2/'
alias pg='ping -c 3 www.google.com'
alias m='make'
alias gd='git diff'
alias gs='git status'
alias push='git push'
alias pull='git pull'

PS1='[\u@\h \W]\$ '
export GOPATH=$HOME/gopath
export PATH=$GOPATH:$GOPATH/bin:$PATH
