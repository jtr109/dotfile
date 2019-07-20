" Deoplete
" let g:python3_host_prog = expand('~/.virtualenvs/nvim-CNPbTL6T/bin/python')
" let g:deoplete#enable_at_startup = 1
" UltiSnips
let g:UltiSnipsExpandTrigger="<c-b>"
" let g:ultisnipsjumpforwardtrigger="<c-b>"
" let g:ultisnipsjumpbackwardtrigger="<c-z>"

" NerdTree
map <leader>t :NERDTreeToggle<CR>
let NERDTreeShowHidden=1  "默认显示隐藏文件

" FZF
let $FZF_DEFAULT_COMMAND = 'rg --files --hidden'
map <leader>ff :Files<CR>
map <leader>fr :Rg<CR>
map <leader>ll :Buffers<CR>

" ALE
let g:ale_close_preview_on_insert = 1
let g:ale_completion_enabled = 1
let g:ale_sign_column_always = 1        "左侧标记栏常驻
map <leader>gd :ALEGoToDefinition<CR>
map <leader>en :ALENext<CR>
map <leader>ep :ALENextWrap<CR>

" Supertab
let g:SuperTabDefaultCompletionType = "<c-n>"

" EasyMotion
map <leader><leader>l <Plug>(easymotion-lineforward)
map <leader><leader>j <Plug>(easymotion-j)
map <leader><leader>k <Plug>(easymotion-k)
map <leader><leader>h <Plug>(easymotion-linebackward)
let g:EasyMotion_startofline = 0 " keep cursor column when JK motion
