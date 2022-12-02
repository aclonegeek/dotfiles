function emacs_build -a type clean
    set -l nproc (math (nproc)/2)

    if test -n "$clean"
       git clean -xfd
       ./autogen.sh
       emacs_configure $type
    end

    make -j$nproc

    if [ "$type" = "prod" ]
        sudo make install
    end
end