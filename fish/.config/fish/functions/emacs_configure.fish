function emacs_configure -a type
    set -l cflags
    set -l native_comp

    switch $type
        case "dev"
            set cflags "-Og -ggdb3 -pipe -mtune=native -march=native"
            set native_comp "no"
        case "prod"
            set cflags "-O2 -pipe -mtune=native -march=native -fomit-frame-pointer"
            set native_comp "aot"
        case '*'
            echo "Unrecognized build type"
            return 1
    end

    ./configure \
        --enable-link-time-optimization \
        --without-all \
        --with-cairo \
        --with-gnutls \
        --with-harfbuzz \
        --with-json \
        --with-modules \
        --with-native-compilation=$native_comp \
        --with-pgtk \
        --with-small-ja-dic \
        --with-tree-sitter \
        --with-threads \
        --with-toolkit-scroll-bars \
        --with-xml2 \
        --with-zlib \
        "CFLAGS=$cflags"
end