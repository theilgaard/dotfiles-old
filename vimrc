" Syntax highlighting on
syntax on

set tabstop=8 softtabstop=0 shiftwidth=4 smarttab

" Expand tabs to spaces
set expandtab

" Show matching parentheses
set showmatch

" Highlight search matches
set hlsearch

" Show lineumbers
set number

" Automatically indent on newline
set autoindent

" Ignore case when searching
set ignorecase

" Always show status line
set laststatus=2

" ====  Input ==== 

" Set leader key
let mapleader=' '
nnoremap <space> <nop>

" Disable search match highlighting
map <leader>h :nohlsearch<CR>
