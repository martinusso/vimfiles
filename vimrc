filetype plugin indent on
syntax on
set nocompatible           " disables compatibility with legacy vi


" font
if has('unix')
	set guifont=
else
	set guifont=Consolas:h12
	set enc=utf-8
endif

call plug#begin()
Plug 'joshdick/onedark.vim', { 'as': 'onedark' }

Plug 'bling/vim-airline'
Plug 'editorconfig/editorconfig-vim'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/syntastic'
Plug 'sheerun/vim-polyglot'
Plug 'terryma/vim-multiple-cursors'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
" golang
Plug 'fatih/vim-go', {'do': ':GoInstallBinaries'}

" html
Plug 'hail2u/vim-css3-syntax'
Plug 'gorodinskiy/vim-coloresque'
Plug 'tpope/vim-haml'
Plug 'mattn/emmet-vim'

" javascript
Plug 'jelera/vim-javascript-syntax'

" php
Plug 'arnaud-lb/vim-php-namespace'

" python
Plug 'davidhalter/jedi-vim'
Plug 'raimon49/requirements.txt.vim', {'for': 'requirements'}

" rust
Plug 'racer-rust/vim-racer'
Plug 'rust-lang/rust.vim'

call plug#end()

" vim-airline
let g:airline#extensions#tabline#enabled = 1
set laststatus=2 " always displays de airline bar

" vim-go
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1

let g:go_fmt_command = "goimports"


" color scheme
colorscheme onedark


" configs
set autoread            " Automatically read files which have been changed outside of Vim
set backspace=indent,eol,start " make backspace behave in a sane manner
set number
set relativenumber

"some stuff to get the mouse going in term
set mouse=a
if !has("nvim")
    set ttymouse=xterm2
endif

"hide buffers when not displayed
set hidden

" search
set incsearch
set hlsearch
set ignorecase
set smartcase

" tabs
set smarttab        " tab respect 'tabstop', 'shiftwidth', and 'softtabstop'
set tabstop=2
set shiftwidth=2
set softtabstop=2
set autoindent
set smartindent
set showmatch
set expandtab

" use the system clipboard
if has('unix')
  set clipboard=unnamedplus
else
  set clipboard=unnamed
endif

" Folding
if has('folding')
    set foldmethod=indent  " folding method: indent
    set foldmethod=marker  " Fold on marker
    set foldlevel=999      " initial fold level
endif

" Shows popup menu on <tab> completion
set wildmenu                            " use wildmenu
set wildcharm=<TAB>
set wildmode=list:longest               " make cmdline completion similar to bash
set wildignore=*.o,*.sw*,*.pyc,*.bak,*~ " stuff to ignore when tab completing


" Map Ctrl + t to tooggle NERDTree
map <C-t> :NERDTreeToggle<CR>
