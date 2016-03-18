set nocompatible

" Vundle
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'altercation/vim-colors-solarized'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'fatih/vim-go'
Plugin 'majutsushi/tagbar'
Plugin 'raimondi/delimitmate'
Plugin 'shougo/neocomplete.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
call vundle#end()
filetype plugin indent on

" airline
let g:airline_powerline_fonts = 1
let g:airline_theme='powerlineish'

" GitGutter
let g:gitgutter_realtime = 1
let g:gitgutter_eager = 1
set updatetime=250

" tagbar
nmap <silent> <C-t> :TagbarToggle<CR>
imap <silent> <C-t> <ESC>:TagbarToggle<CR>
cmap <silent> <C-t> <ESC>:TagbarToggle<CR>

" neocomplete
let g:neocomplete#enable_at_startup = 1
let g:neocomplete#enable_smart_case = 1

inoremap <expr><C-g>     neocomplete#undo_completion()
inoremap <expr><C-l>     neocomplete#complete_common_string()
" <CR>: close popup and save indent.
inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
function! s:my_cr_function()
  return (pumvisible() ? "\<C-y>" : "" ) . "\<CR>"
endfunction
" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" <C-h>, <BS>: close popup and delete backword char.
inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"

" VimGo
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_interfaces = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
let g:go_fmt_command = "goimports"

au FileType go nmap <leader>r <Plug>(go-run)
au FileType go nmap <leader>b <Plug>(go-build)
au FileType go nmap <leader>t <Plug>(go-test)
au FileType go nmap <leader>c <Plug>(go-coverage)
au FileType go nmap <Leader>ds <Plug>(go-def-split)
au FileType go nmap <Leader>dv <Plug>(go-def-vertical)
au FileType go nmap <Leader>dt <Plug>(go-def-tab)
au FileType go nmap <Leader>gd <Plug>(go-doc)
au FileType go nmap <Leader>gv <Plug>(go-doc-vertical)
au FileType go nmap <Leader>gb <Plug>(go-doc-browser)
au FileType go nmap <Leader>i <Plug>(go-info)
au FileType go nmap <Leader>e <Plug>(go-rename)

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
