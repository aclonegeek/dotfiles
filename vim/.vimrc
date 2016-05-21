set nocompatible	" required for vundle
filetype off		" required for vundle

" setup vundle
set rtp+=$HOME/vimfiles/bundle/Vundle.vim
call vundle#begin('$HOME/vimfiles/bundle/')

" vundle config
Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'Valloric/YouCompleteMe'

call vundle#end()
filetype plugin indent on    " required

au GUIEnter * simalt ~x		 " set gvim fullscreen

set makeprg=clang++

"""""""""
"display"
"""""""""
syntax on
colorscheme luna
set number
set background=dark
set cursorline		" highlights the current line
set noshowmode
set guioptions-=m	" remove menu bar
set guioptions-=T	" remove toolbar
set guioptions-=r	" remove right-hand scroll bar
set guioptions-=L	" remove left-hand scroll bar
set guioptions-=R
set t_vb=""			" no beeping

""""""""
"editor"
""""""""
set backspace=indent,eol,start
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab		" turns tabs into spaces
set history=1000
set undolevels=1000

""""""""""
"plugins"
""""""""""
" airline 
set encoding=utf-8
set laststatus=2	" airline always on
let g:airline_powerline_fonts = 1
let g:airline_theme = "dark"
let g:airline#extensions#tabline#enabled = 1
set guifont=DejaVu\ Sans\ Mono\ for\ Powerline
