#
# ~/.bashrc
#

# If not running interactively, don't do anything.
[[ $- != *i* ]] && return

configure_emacs() {
    local cflags

    if [[ $1 == "dev" ]];
    then
        cflags="-Og -ggdb3 -pipe -mtune=native -march=native"
    else
        cflags="-O2 -pipe -mtune=native -march=native -fomit-frame-pointer"
    fi

    ./configure \
        --enable-link-time-optimization \
        --without-all \
        --with-cairo \
        --with-gnutls \
        --with-harfbuzz \
        --with-json \
        --with-modules \
        --with-native-compilation \
        --with-pgtk \
        --with-small-ja-dic \
        --with-threads \
        --with-toolkit-scroll-bars \
        --with-xml2 \
        --with-zlib \
        "CFLAGS=$cflags"
}

# ls stuff.
alias l='ls -l'
alias la='ls -al'
alias ls='lsd'

# Misc.
alias cat='bat'
alias m='make'
alias pg='ping -c 3 www.google.com'

source /usr/share/skim/completion.bash && source /usr/share/skim/key-bindings.bash

PS1='[\w]\$ '

export HISTSIZE=
export HISTFILESIZE=
export DOTNET_CLI_TELEMETRY_OPTOUT=1
