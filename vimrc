set nocompatible

" Vundle
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'altercation/vim-colors-solarized'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'fatih/vim-go'
Plugin 'itchyny/lightline.vim'
Plugin 'raimondi/delimitmate'
Plugin 'tpope/vim-fugitive'
call vundle#end()
filetype plugin indent on

" CtrlP
let g:ctrlp_switch_buffer = 0

" Solarized
syntax enable
colorscheme solarized
set background=dark

" General configs (:help <config>)
set autoread
set diffopt+=vertical
set history=1000
set laststatus=2
set number
set showcmd
set showmode
set visualbell

" Search
set incsearch
set hlsearch
set ignorecase
nmap <silent> // :nohlsearch<CR>

" Indentation
set shiftround
set shiftwidth=2
set tabstop=2
set expandtab

" End of line
set list listchars=tab:\ \ ,trail:·
set nowrap
set linebreak

" Columns
set textwidth=80
set colorcolumn=+1

" No swp files
set nobackup
set noswapfile
set nowritebackup

" Persistent undo
if has('persistent_undo')
  silent !mkdir /tmp/vimbackups > /dev/null 2>&1
  set undodir=/tmp/vimbackups
  set undofile
endif

" Panel management
nnoremap <silent> vv <C-w>v
nnoremap <silent> ss <C-w>s
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l

" Completion
set wildmode=list:longest
set wildignore=*.o,*.obj,*~
set wildignore+=*vim/backups*
set wildignore+=vendor/cache/*
set wildignore+=*DS_Store*

" Scrolling
set scrolloff=8
set sidescrolloff=15
set sidescroll=1
