set nocompatible " required for vundle
filetype off " required for vundle

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Plugins
Plugin 'gmarik/Vundle.vim' " let Vundle manage Vundle, required
Plugin 'w0rp/ale'
Plugin 'tmhedberg/SimpylFold'
Plugin 'vim-scripts/indentpython.vim'
Bundle 'Valloric/YouCompleteMe'
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'kien/ctrlp.vim'
Plugin 'mileszs/ack.vim'

"Plugin 'google/yapf', { 'rtp': 'plugins/vim' }
" All Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
let mapleader=" " " set leader key
set encoding=utf-8
set clipboard=unnamed

"split navigations
set splitbelow
set splitright
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Enable folding
set foldmethod=indent
set foldlevel=99
nnoremap <leader>f za
let g:SimpylFold_docstring_preview=1

" Python indentation
au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=100 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix


let python_highlight_all=1
syntax on

" YouCompleteMe shortcuts
let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

" NerdTree
autocmd vimenter * NERDTree " auto start nerd tree
autocmd VimEnter * wincmd p " jumpt to the main window (not NerdTree)
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif " Close vim if nerdtree is only buffer
let NERDTreeIgnore=['\.pyc$', '.DS_Store', '\~$'] "ignore files in NERDTree
map <C-n> :NERDTreeToggle<CR>

" ctags + ctrlP -- this will find function definitions
nnoremap <leader>. :CtrlPTag<cr>
" ack.vim to use ag instead
let g:ackprg = 'ag --nogroup --nocolor --column'
" <space>a is a shortcut got ack/ag
map <leader>a :Ack<space>

"let g:ale_linters = {'python': ['pylint']}
map <C-Y> :call yapf#YAPF()<cr>
imap <C-Y> <c-o>:call yapf#YAPF()<cr>

colorscheme badwolf
syntax enable
set tabstop=4 "number of visual spaces per TAB
set softtabstop=4 "number of spaces in tab when editing
set expandtab "make tabs = spaces
set number "show line numbers
set showmatch "highlight matching brackets
set ruler
set hlsearch

