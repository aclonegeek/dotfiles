#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# ls stuff
alias l='ls -l'
alias la='ls -al'
alias ls='lsd'

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

source /usr/share/fzf/completion.bash && source /usr/share/fzf/key-bindings.bash

PS1='[\u@\h \W]\$ '

export HISTSIZE=
export HISTFILESIZE=
export DOTNET_CLI_TELEMETRY_OPTOUT=1
