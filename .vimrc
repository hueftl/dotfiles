" file: .vimrc
" author: hueftl (Alexander Menne)
" license: MIT

set textwidth=119
set showmatch
set hlsearch

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
Plug 'scrooloose/nerdcommenter'
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
Plug 'pangloss/vim-javascript'
Plug 'leafgarland/typescript-vim'
Plug 'mxw/vim-jsx'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
"Plug 'bagrat/vim-buffet'
call plug#end()

" remap semicolon to colon, because shift is for nerds
nnoremap ; :

" NERDTree
"autocmd vimenter * NERDTree
map <C-n> :NERDTreeToggle<CR>
let NERDTreeShowHidden=1
let NERDTreeIgnore = ['\.pyc$', '__pycache__']
let g:NERDTreeWinSize=35

" NERD

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
