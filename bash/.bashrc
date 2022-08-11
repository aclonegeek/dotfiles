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
        --with-file-notification=no \
        --with-modules \
        --with-native-compilation \
        --with-pgtk \
        --with-small-ja-dic \
        --with-sound=no \
        --without-compress-install \
        --without-dbus \
        --without-gconf \
        --without-gif \
        --without-gpm \
        --without-gsettings \
        --without-imagemagick \
        --without-jpeg \
        --without-lcms2 \
        --without-libgmp \
        --without-libotf \
        --without-libsystemd \
        --without-m17n-flt \
        --without-native-image-api \
        --without-png \
        --without-rsvg \
        --without-selinux \
        --without-sqlite3 \
        --without-tiff \
        --without-webp \
        --without-xaw3d \
        --without-xim \
        --without-xpm \
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
