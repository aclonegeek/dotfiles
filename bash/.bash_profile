#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

export PATH="$HOME/.cargo/bin:$PATH"
export EDITOR="emacsclient -c"
export TERMINAL="alacritty"
export BROWSER="firefox-nightly"

if [[ ! $DISPLAY && XDG_VTNR -eq 1 ]]; then
    exec startx
fi
