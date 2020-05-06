let $VIMHOME = expand('~/.config/nvim')
if !isdirectory($VIMHOME)
	let $VIMHOME = expand('~/.vim')
endif

call plug#begin($VIMHOME.'/plugged')
Plug 'joshdick/onedark.vim', { 'as': 'onedark' }

Plug 'bling/vim-airline'
Plug 'editorconfig/editorconfig-vim'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'ervandew/supertab'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/syntastic'
Plug 'SirVer/ultisnips'
Plug 'terryma/vim-multiple-cursors'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'Valloric/YouCompleteMe'
"Plug 'mdempsky/gocode', { 'rtp': 'vim', 'do': '~/.vim/plugged/gocode/vim/symlink.sh' }

" golang
Plug 'fatih/vim-go', {'do': ':GoInstallBinaries'}

Plug 'sheerun/vim-polyglot'

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

filetype plugin indent on
syntax on
set nocompatible           " disables compatibility with legacy vi

"set undodir=~/.vim/tmp/undo//     " undo files
"set backupdir=~/.vim/tmp/backup// " backups
"et directory=~/.vim/tmp/swap//   " swap files
"set backup                        " enable backups
set noswapfile

" font
if has('unix')
	set guifont=
else
	set guifont=Consolas:h12
	set enc=utf-8
endif


""" CtrlP
"""""""""
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'

""" NERDCommenter
"""""""""""""""""
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1

" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'

" Add your own custom formats or override the defaults
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }

" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1

" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1

" Enable NERDCommenterToggle to check all selected lines is commented or not 
let g:NERDToggleCheckAllLines = 1
""" NERDTree
""""""""""""

" Map Ctrl + t to tooggle NERDTree
map <C-\> :NERDTreeToggle<CR>
noremap <Leader>n :NERDTreeToggle<cr>
noremap <Leader>f :NERDTreeFind<cr>
let NERDTreeIgnore = ['\.pyc$', '\.pyo$', '\.swp$', '\~$']
let NERDTreeShowHidden=1

""" Syntastic
"""""""""""""
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
"let g:syntastic_go_checkers = ['go', 'golint', 'govet']
let g:syntastic_go_checkers = ['go', 'govet']
let g:syntastic_php_checkers = ['php', 'phpcs']
let g:syntastic_python_checkers = ['pylint']

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

""" UltiSnips
let g:UltiSnipsExpandTrigger="<c-l>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

""" vim-airline
"""""""""""""""
let g:airline#extensions#tabline#enabled = 1
set laststatus=2 " always displays de airline bar

""" vim-go
""""""""""
let g:go_fmt_fail_silently = 1
let g:go_fmt_command = "goimports"

let g:go_null_module_warning = 0
let g:go_echo_command_info = 1

let g:go_autodetect_gopath = 1
"let g:go_metalinter_autosave_enabled = ['vet', 'golint']
"let g:go_metalinter_enabled = ['vet', 'golint']
"let g:go_metalinter_flags = ["--exclude=\"\bexported \\w+ (\\S*['.]*)([a-zA-Z'.*]*) should have comment or be unexported\b\""]

let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1


""" HTML
""""""""""""""""
let g:user_emmet_leader_key=','


""" Color Scheme
""""""""""""""""
colorscheme onedark


""" Configs
"""""""""""
set autoread            " Automatically read files which have been changed outside of Vim
set backspace=indent,eol,start " make backspace behave in a sane manner
set number
set relativenumber

"some stuff to get the mouse going in term
set mouse=a
if !has("nvim")
    set ttymouse=xterm2
endif

set autowrite        " Automatically save before :next, :make etc
set hidden           "hide buffers when not displayed

set completeopt=menu,longest
setlocal omnifunc=go#complete#Complete

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

augroup filetypedetect
  command! -nargs=* -complete=help Help vertical belowright help <args>
  autocmd FileType help wincmd L

  autocmd BufNewFile,BufRead *.go setlocal noexpandtab tabstop=4 shiftwidth=4

  autocmd BufNewFile,BufRead *.txt setlocal noet ts=4 sw=4
  autocmd BufNewFile,BufRead *.md setlocal noet ts=4 sw=4
  autocmd BufNewFile,BufRead *.html setlocal noet ts=4 sw=4
  autocmd BufNewFile,BufRead *.sh setlocal expandtab shiftwidth=2 tabstop=2

  autocmd FileType json setlocal expandtab shiftwidth=2 tabstop=2
augroup END

" golang
"
"set rtp+=$GOPATH/src/golang.org/x/lint/misc/vim
"
"autocmd BufWritePost,FileWritePost *.go execute 'Lint' | cwindow

augroup go
  autocmd!
  autocmd FileType go nmap <silent> <Leader>v <Plug>(go-def-vertical)
  autocmd FileType go nmap <silent> <Leader>s <Plug>(go-def-split)
  autocmd FileType go nmap <silent> <Leader>d <Plug>(go-def-tab)

  autocmd FileType go nmap <silent> <Leader>x <Plug>(go-doc-vertical)

  autocmd FileType go nmap <silent> <Leader>i <Plug>(go-info)
  autocmd FileType go nmap <silent> <Leader>l <Plug>(go-metalinter)

  autocmd FileType go nmap <silent> <leader>b :<C-u>call <SID>build_go_files()<CR>
  autocmd FileType go nmap <silent> <leader>t  <Plug>(go-test)
  autocmd FileType go nmap <silent> <leader>r  <Plug>(go-run)
  autocmd FileType go nmap <silent> <leader>e  <Plug>(go-install)

  autocmd FileType go nmap <silent> <Leader>c <Plug>(go-coverage-toggle)
augroup END

""" Mappings and abbreviations
""""""""""""

" This comes first, because we have mappings that depend on leader
" With a map leader it's possible to do extra key combinations
" i.e: <leader>w saves the current file
let mapleader = ","

cab W w | cab Q q | cab Wq wq | cab wQ wq | cab WQ wq | cab X x

" Fast saving
nnoremap <leader>w :w!<cr>
nnoremap <silent> <leader>q :q!<CR>

" Move line to UP or DOWN
noremap <A-DOWN> mz:m+<cr>
noremap <A-UP> mz:m-2<cr>
inoremap <A-DOWN> <esc>:m+<cr>==gi
inoremap <A-UP> <esc>:m-2<cr>==gi

" moving up and down work as you would expect
nnoremap <silent> j gj
nnoremap <silent> k gk

nnoremap <CapsLock> <ESC>
" Tabs
nnoremap <Tab> gt
nnoremap <S-Tab> gT
nnoremap <silent> <S-t> :tabnew<CR>
" Tab navigation
map tn :tabnext<CR>
map tp :tabprevious<CR>
map tt :tabnew<CR>

map <C-z> <Nop>

" Working with buffers
" go to next buffer
noremap <C-S-j> :bnext<CR>
inoremap <C-S-j> <ESC>:bnext<CR>
noremap <C-S-l> :bnext<CR>
inoremap <C-S-l> <ESC>:bnext<CR>
" go to previous buffer
noremap <C-S-h> :bprev<CR>
inoremap <C-S-h> <ESC>:bprev<CR>
noremap <C-S-k> :bprev<CR>
inoremap <C-S-k> <ESC>:bprev<CR>
" delete a buffer (close a file)
noremap <C-q> :q!<CR>
inoremap <C-q> <ESC>:q!<CR>

" Quit a window
inoremap <C-w>q <ESC><C-w>q<CR>

" BufExplorer
nmap <C-b> :BufExplorer<CR>
imap <C-b> <ESC>:BufExplorer<CR>
