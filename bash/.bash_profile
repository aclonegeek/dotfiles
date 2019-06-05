#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

export PATH="$HOME/.local/bin:$HOME/.cargo/bin:$PATH"
export EDITOR="emacsclient -c"
export TERMINAL="alacritty"
export BROWSER="firefox-nightly"

eval $(ssh-agent)

if [[ ! $DISPLAY && XDG_VTNR -eq 1 ]]; then
    exec startx
fi
