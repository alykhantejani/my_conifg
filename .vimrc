set nocompatible " required for vundle
filetype off " required for vundle

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Plugins
Plugin 'gmarik/Vundle.vim' " let Vundle manage Vundle, required
Plugin 'w0rp/ale'
Plugin 'vim-airline/vim-airline'
Plugin 'davidhalter/jedi-vim'
Plugin 'wincent/command-t'
Plugin 'terryma/vim-multiple-cursors'
" All Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
set encoding=utf-8
set clipboard=unnamed


" Enable folding
set foldmethod=indent
set foldlevel=99

" Python indentation
au BufNewFile,BufRead *.py
    \ set tabstop=2 |
    \ set softtabstop=2 |
    \ set shiftwidth=2 |
    \ set textwidth=100 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix

let python_highlight_all=1

syntax on
colorscheme badwolf
syntax enable
set tabstop=4 "number of visual spaces per TAB
set softtabstop=4 "number of spaces in tab when editing
set expandtab "make tabs = spaces
set number "show line numbers
set showmatch "highlight matching brackets
set ruler
set hlsearch
set clipboard=unnamedplus,unnamed
set backspace=indent,eol,start

" jedi vim stuff
set omnifunc=jedi#completions


