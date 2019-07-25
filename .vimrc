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
Plugin 'scrooloose/nerdtree'
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

"command t max files
let g:CommandTMaxFiles=1000000

" jedi vim stuff
set omnifunc=jedi#completions

"nerdTree stuff
"\-n to toggle nerdTree
map <leader>n :NERDTreeToggle<CR>

autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif "close vim if nerdtree is the only open window
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

"Ale Toggle map
map <leader>a :ALEToggle<CR>
"Turn ale off when opening vim
autocmd VimEnter * :ALEToggle
