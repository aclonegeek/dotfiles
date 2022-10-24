function emacs_build -a type clean
    set -l nproc (math (nproc)/2)

    if test -n "$clean"
       git clean -xfd
       ./autogen.sh
    end

    emacs_configure $type
    and make -j$nproc
    and sudo make install
end