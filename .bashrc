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
alias won='systemctl start connman'
alias ytdl='youtube-dl --extract-audio --audio-format mp3 $1'

PS1='[\u@\h \W]\$ '

export DOTNET_CLI_TELEMETRY_OPTOUT=1
