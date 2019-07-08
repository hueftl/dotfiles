" file: nerdtree.vim
" author: hueftl (Alexander Menne)
" all nerdtree related configuration

"autocmd vimenter * NERDTree
map <C-n> :NERDTreeToggle<CR>
let NERDTreeShowHidden=1
let NERDTreeIgnore = ['\.pyc$', '__pycache__']
let g:NERDTreeWinSize=35
