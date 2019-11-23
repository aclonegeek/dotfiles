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
alias g='git'

# misc
alias ecfg='cd ~/.emacs.d'
alias m='make'
alias pg='ping -c 3 www.google.com'
alias ytdl='youtube-dl --extract-audio --audio-format mp3 $1'

source /usr/share/fzf/completion.bash && source /usr/share/fzf/key-bindings.bash

PS1='[\u@\h \W]\$ '

export HISTSIZE=
export HISTFILESIZE=
export DOTNET_CLI_TELEMETRY_OPTOUT=1
