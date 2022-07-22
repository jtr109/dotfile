" set <leader>
" the mapleader must be set before all map base of leader
let g:mapleader = ','

" break line in normal mode, you can use <c-j> to break a line
:nnoremap <NL> i<CR><ESC>

" map :b#, switch to the previous buffer
:noremap <leader>b :b<CR>

" switch to previous buffer
:noremap <leader>b :b#<CR>
