" file: .vimrc
" author: hueftl (Alexander Menne)
" license: MIT

set nocompatible	" required
filetype off		" required
syntax on
set encoding=utf-8
set number
set autoindent
set smartindent
set smarttab
set list
set listchars=tab:▸\ ,eol:¬
set splitbelow
set splitright
set signcolumn=yes
set tabstop=4
set softtabstop=4
set shiftwidth=4
set textwidth=119
set expandtab
set autoindent
"set fileformat=unix\
" remove trailing whitespace in Python files
autocmd BufWritePre *.py :%s/\s\+$//e

" Ale
let g:ale_completion_enabled = 1
let g:ale_fix_on_save = 1

" Plugin Manager
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif
" Plugins
call plug#begin('~/.vim/plugged')
Plug 'junegunn/vim-plug'
Plug 'morhetz/gruvbox'
Plug 'scrooloose/nerdtree'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'w0rp/ale'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'ntpeters/vim-better-whitespace'
Plug 'Valloric/YouCompleteMe'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'dhruvasagar/vim-table-mode'
Plug 'dag/vim-fish'
"Plug 'bagrat/vim-buffet'
call plug#end()

" Theme: Gruvbox
set background=dark
let g:gruvbox_contrast_dark='hard'
colorscheme gruvbox
"hi Normal ctermbg=none

" remap semicolon to colon, because shift is for nerds
nnoremap ; :

" NERDTree
"autocmd vimenter * NERDTree
map <C-n> :NERDTreeToggle<CR>
let NERDTreeShowHidden=1
let NERDTreeIgnore = ['\.pyc$', '__pycache__']
let g:NERDTreeWinSize=35

" Airline
let g:airline_solarized_bg = 'dark'
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1

" vim-buffet
let g:buffet_powerline_separators = 1

" better whitespace
let g:better_whitespace_enabled=1
let g:strip_whitespace_on_save=1
let g:show_spaces_that_precede_tabs=1
let g:better_whitespace_verbosity=1

" vim-indent-guides
"let g:indent_guides_guide_size = 1
"let g:indent_guides_color_change_percent = 3
"let g:indent_guides_enable_on_vim_startup = 1
