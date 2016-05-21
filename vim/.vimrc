set nocompatible              " be iMproved, required
filetype off                  " required

" begin vundle block
set rtp+=$HOME/vimfiles/bundle/Vundle.vim
call vundle#begin('$USERPOFILE/vimfiles/bundle/')

Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-airline/vim-airline'

call vundle#end()            " required
filetype plugin indent on    " required
" end vundle block

au GUIEnter * simalt ~x " fullscreen

syntax on
set number
set backspace=indent,eol,start

set guioptions-=m	" remove menu
set guioptions-=T	" remove toolbar
set guioptions-=r	" remove scrollbar
set t_vb=""		" no beeping

set tabstop=4
set softtabstop=4
set shiftwidth=4
set noexpandtab

colorscheme luna

" airline specific
set encoding=utf-8
set laststatus=2
let g:airline_powerline_fonts = 1
let g:airline_theme = "dark"
let g:airline#extensions#tabline#enabled = 1
set guifont=DejaVu\ Sans\ Mono\ for\ Powerline
