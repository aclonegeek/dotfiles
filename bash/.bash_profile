#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

export PATH="$HOME/.local/bin:$HOME/.cargo/bin:$PATH"
export EDITOR="emacsclient -c"
export TERMINAL="alacritty"
export BROWSER="firefox-nightly"
export SSH_AUTH_SOCK="$XDG_RUNTIME_DIR/ssh-agent.socket"
export MOZ_ENABLE_WAYLAND=1

if [ -z $DISPLAY ] && [ "$(tty)" = "/dev/tty1" ]; then
  exec sway
fi
