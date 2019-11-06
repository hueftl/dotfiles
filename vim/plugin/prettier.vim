" file: prettier.vim
" author: hueftl (Alexander Menne)
"
" Contains configuration for the Prettier tool for JS

let g:prettier#autoformat = 0
autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue,*.yaml,*.html PrettierAsync
