" Sahl plugin for vim
" Language: SAHL
" Maintainer: Luke Williams
" Latest Revision: 23 April 2020

autocmd Filetype sahl setlocal ts=2 sw=2 expandtab
au BufWritePost *.sahl silent exec "!sahl -s <afile>"
au BufRead,BufNewFile *.sahl set filetype=sahl
