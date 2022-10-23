function emacs_build -a type clean
    if test -n "$clean"
       git clean -xfd
       ./autogen.sh
    end

    emacs_configure $type
    and make -j math (nproc)/2
    and sudo make install
end