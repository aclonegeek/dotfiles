#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

if [[ ! $DISPLAY && XDG_VTNR -eq 1 ]]; then
    exec startx
fi

export EDITOR="emacs"
export TERMINAL="alacritty"
export BROWSER="firefox-nightly"

export PATH="$HOME/.cargo/bin:$PATH"
