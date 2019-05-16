" file: ale.vim
" All ale related configurations
" author: hueftl (Alexander Menne)
" license: MIT

let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%][%severity%] %code: %%s'
let g:airline#extensions#ale#enabled = 1
let g:airline#extensions#ale#error_symbol = '✗ '
let g:airline#extensions#ale#warning_symbol = '⚠ '
let g:ale_completion_enabled = 1
let g:ale_fix_on_save = 0
let g:ale_sign_error = '✖'
let g:ale_sign_warning = '⚠'
let g:ale_sign_info = 'ℹ'
let g:ale_linters = {
    \ 'python': [ 'flake8' ],
    \ 'rust': [ 'cargo', 'rustc' ],
    \ }
let g:ale_fixers = {
    \ 'python': [ 'autopep8', 'yapf', 'isort' ],
    \ 'rust': [ 'rustfmt' ],
    \ 'javascript': [ 'prettier' ],
    \ 'typescript': [ 'prettier' ],
    \ }
