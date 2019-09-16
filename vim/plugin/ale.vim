" file: ale.vim
" author: hueftl (Alexander Menne)
" All ale related configurations

let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_on_insert_leave = 0
let g:ale_lint_on_enter = 0

let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%][%severity%] %code: %%s'

let g:ale_completion_enabled = 1
let g:ale_fix_on_save = 0

let g:ale_sign_column_always = 1
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
