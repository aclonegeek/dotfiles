# dotfiles
My personal dotfiles that are managed using [GNU stow](https://www.gnu.org/software/stow/).

# Usage
``` shell
stow x bash screenlayout i3 i3blocks rofi redshift zathura alacritty
```

# [Packages](packages)

# GCC
## Building
``` shell
mkdir gcc
cd gcc
git clone git://gcc.gnu.org/git/gcc.git src
mkdir buildjit
mkdir buildgcc
```

## Configure JIT
```
cd buildjit
../src/configure --prefix=/usr --enable-host-shared --enable-languages=jit --disable-bootstrap --disable-multilib
```

## Configure GCC
```
cd buildgcc
../src/configure --prefix=/usr --libdir=/usr/lib --libexecdir=/usr/lib --mandir=/usr/share/man --infodir=/usr/share/info --enable-languages=c,c++,lto --enable-shared --enable-threads=posix --with-system-zlib --with-isl --enable-__cxa_atexit --disable-libunwind-exceptions --enable-clocale=gnu --disable-libstdcxx-pch --disable-libssp --enable-gnu-unique-object --enable-linker-build-id --enable-lto --enable-plugin --enable-install-libiberty --with-linker-hash-style=gnu --enable-gnu-indirect-function --disable-werror --enable-checking=release --enable-default-pie --enable-default-ssp --enable-cet=auto --disable-multilib
```
