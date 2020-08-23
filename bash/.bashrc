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
alias cat='bat'
alias m='make'
alias pg='ping -c 3 www.google.com'

source /usr/share/skim/completion.bash && source /usr/share/skim/key-bindings.bash

PS1='[\w]\$ '

export HISTSIZE=
export HISTFILESIZE=
export DOTNET_CLI_TELEMETRY_OPTOUT=1
