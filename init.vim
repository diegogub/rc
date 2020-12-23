call plug#begin('~/.vim/plugged')

" Start screen
Plug 'mhinz/vim-startify'

"
Plug 'tpope/vim-commentary'
Plug 'preservim/nerdtree'
Plug 'tpope/vim-repeat'

Plug 'dikiaap/minimalist'

"Git
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

"Syntax
Plug 'sheerun/vim-polyglot'

"Golang
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }



" Lisp
Plug 'vlime/vlime', {'rtp': 'vim/'}
Plug 'tpope/vim-surround'
"Plug 'cohama/lexima.vim'
Plug 'vim-scripts/paredit.vim'
Plug 'guns/vim-sexp'
let g:sexp_enable_insert_mode_mappings = 0

Plug 'luochen1990/rainbow'

let g:rainbow_active = 1

call plug#end()

colorscheme minimalist

" Tab fix
filetype plugin indent on
set tabstop=2
set shiftwidth=2    " Indents will have a width of 4
set softtabstop=2   " Sets the number of columns for a TAB
set expandtab " Expand TABs to spaces

" Avoid being compatible with vim
set nocompatible

syntax enable
filetype plugin on


" Add recusive file finding
set path+=**
set wildmenu
set showcmd

" Active mouse
set mouse=a


" Make all tags
command! MakeTags !ctags -R .
command! RunVlime !clrpl

" File browser
let g:netrw_banner=0
let g:netrw_browser_split=4

" Map leader to space
nnoremap <SPACE> <Nop>
map <Space> <Leader>


"Show line numbers
set nu
