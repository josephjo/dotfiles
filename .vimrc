" .vimrc

" First
execute pathogen#infect()
filetype plugin indent on
set modelines=0
set nocompatible

" Map leader
let mapleader = ","
let g:mapleader = ","

" Basics
hi CursorLine cterm=NONE ctermbg=darkred ctermfg=white
set autoindent
set backspace=indent,eol,start
set cursorline
set encoding=utf-8
set formatoptions=qrn1
set hidden
set history=500
set laststatus=2
set number
set ruler
set scrolloff=999
set showcmd
set showmode
set t_Co=256 " Use 256 colors
set ttyfast
set undolevels=1000
set visualbell
set wildmenu
set wildmode=list:longest
set wrap
syntax enable

" Tabs
set expandtab
set shiftwidth=4
set softtabstop=4
set tabstop=4

" Search
nnoremap / /\v
vnoremap / /\v
set gdefault
set hlsearch
set ignorecase
set incsearch
set showmatch
set smartcase

" Backup
set backup
set backupdir=~/.vimbk/

" Persistent undo
set undofile
set undodir=~/.vimundo/

" Spell check
set spl=en spell
map <leader>sp :setlocal spell!<cr>

" Misc
nnoremap ; :
au FocusLost * :wa
" au BufNewFile,BufRead *.html set filetype=htmldjango
au BufRead,BufNewFile *.less set filetype=css
