"------------------------------------------------------------------------------
" Description: Rosemary's vimrc file
"------------------------------------------------------------------------------

" Essentials
set nocompatible
set encoding=utf-8
let mapleader=","

" vim-plug plugins
call plug#begin()

" Appearance
Plug 'junegunn/seoul256.vim'

" Configuration
Plug 'editorconfig/editorconfig-vim'

" Productivity
" Plug 'junegunn/goyo.vim'
" Plug 'scrooloose/nerdtree', { 'on': 'NERDTree' }
" Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': 'yes \| ./install' }

call plug#end()

" Editor Behavior

" Expand all tabs to 4 spaces
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set autoindent
set smarttab

" Highlight searches as you type
set incsearch
set hlsearch

" Case insensitive when searching except with uppercase
set ignorecase
set smartcase

" Custom commands
command Latex execute "!xelatex % && open %:r.pdf"

" Key bindings
set pastetoggle=<F2>
nnoremap <F3> :Latex<CR>
nnoremap <leader><space> :noh<CR>
nnoremap <leader>l :set list!<CR>
map Y y$

set confirm " Ask to save instead of failing :q
set mouse=a " Enable mouse

" if version >= 704
"     set formatoptions+=j " Delete comment character when joining lines
" endif

set nojoinspaces " Use only 1 space after . when joining lines instead of 2

set backspace=2

"------------------------------------------------------------------------------
" Undo
set undodir=~/.vim/undo
set undofile
set undolevels=1000
set undoreload=10000

"------------------------------------------------------------------------------
" Interface

" Line Numbers
set number

" set laststatus=2 " always display status bar
set ruler " show cursor position
set showcmd " Show commands as they're being typed

" Wildmenu
set wildmode=longest,list,full
set wildmenu

" set scrolloff=2 " Make sure there's always rows below cursor
" set sidescrolloff=5 " ...and some to the side

set display+=lastline,uhex

" Display
syntax on

" Unified color scheme (default: dark)
colo seoul256

" Light color scheme
colo seoul256-light
"
" " Switch
set background=dark

set listchars=tab:▸\ ,eol:¬

set noswapfile
