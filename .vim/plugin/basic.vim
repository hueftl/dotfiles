" file: basic.vim
" author: hueftl (Alexander Menne)
" license: MIT
" contains basic vim settings for more awesomeness

" we want VIM not vi settings
set nocompatible

" detect filetype
filetype plugin indent on

set encoding=utf8

" show line numbers and highlight cursorline
set number
set cursorline

" show tabs, spaces and trailing spaces
set list listchars=tab:▸\ ,eol:¬,space:·,nbsp:␣,extends:❯,precedes:❮
set backspace=indent,eol,start
set history=1000

silent !mkdir ~/.vim/backups > /dev/null 2>&1
set undodir=~/.vim/backups
set backupdir=~/.vim/backups
set dir=/tmp
set backup

" indentation
set autoindent
set expandtab
set shiftround
set shiftwidth=4
set smartindent
set smarttab
set softtabstop=4
set tabstop=4

" control where a new window is opened
set splitbelow
set splitright

" completion menu
set wildmenu
set wildignore+=.pyc,.swp,*.o,*.so,*.a

" further tweaks
set autoread
set autowrite
set showmatch
set showmode
set ignorecase
set smartcase
set incsearch
set hlsearch
set lazyredraw
set linebreak
set title
set confirm
set formatoptions+=j
set textwidth=119
