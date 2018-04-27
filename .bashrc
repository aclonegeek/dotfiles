#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# ls stuff
alias l='ls -l --color=auto'
alias la='ls -al --show-control-chars -F --color'
alias ls='ls --show-control-chars -F --color'

# git stuff
alias ga='git add $*'
alias gaa='git add -A'
alias gd='git diff'
alias gl='git log --oneline --all --graph --decorate $*'
alias gpsh='git push'
alias gpl='git pull'
alias gs='git status'

# misc
alias ecfg='cd ~/.emacs.d'
alias m='make'
alias pg='ping -c 3 www.google.com'
alias school='cd && cd School/University/Year\ 3/Semester\ 2/'
alias won='systemctl start connman'
alias upd='trizen -Su'

PS1='[\u@\h \W]\$ '
export GOPATH=$HOME/gopath
export PATH=$GOPATH:$GOPATH/bin:$PATH
