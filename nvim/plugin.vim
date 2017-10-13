""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                           Pre-settings for Plugins                           "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

function! BuildYCM(info)
  " info is a dictionary with 3 fields
  " - name:   name of the plugin


  " - status: 'installed', 'updated', or 'unchanged'
  " - force:  set on PlugInstall! or PlugUpdate!
  if a:info.status == 'installed' || a:info.force || a:info.status == 'updated'
    !~/.local/share/nvim/plugged/YouCompleteMe/install.py --clang-completer --tern-completer
  endif
endfunction


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                             Plugin Configurations                            "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Specify a directory for plugins (for Neovim: ~/.local/share/nvim/plugged)
" call plug#begin('~/.vim/plugged')  " for vim
call plug#begin('~/.local/share/nvim/plugged')  " for neovim

Plug 'airblade/vim-gitgutter'  " git file change tips
" Plug 'bling/vim-bufferline' " bufferline
Plug 'chemzqm/wxapp.vim'
Plug 'davidhalter/jedi-vim'
Plug 'dracula/vim'
Plug 'easymotion/vim-easymotion'  " easy motion
Plug 'elzr/vim-json' " add to fix the double quote bug of indentLine in json file
" Plug 'ervandew/supertab'
" Plug 'godlygeek/tabular'  " required for vim-markdown
Plug 'leafgarland/typescript-vim'
Plug 'mileszs/ack.vim'
Plug 'mzlogin/vim-markdown-toc'  " markdown 目录自动生成
Plug 'othree/javascript-libraries-syntax.vim'
Plug 'scrooloose/nerdtree'
" Plug 'scrooloose/syntastic'
Plug 'tpope/vim-commentary'  " commentary.vim
Plug 'tpope/vim-fugitive'  " fugitive.vim
Plug 'tpope/vim-repeat'  " vim respeat
Plug 'tpope/vim-surround'  " vim-surround
Plug 'Valloric/MatchTagAlways'  " html tag match highlight
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'vim-scripts/indentpython.vim'  " PEP8 indent
" Plug 'vim-scripts/searchcomplete'
Plug 'w0rp/ale'  " 异步语法检测插件
" Plug 'junegunn/fzf', {'dir': '~/.fzf', 'do': './install --all'}
Plug 'kchmck/vim-coffee-script'  " vim-coffee-script
Plug 'kien/ctrlp.vim'  " ctrlp.vim 全局文件跳转插件
Plug 'pangloss/vim-javascript'
Plug 'posva/vim-vue'  " filetype and syntax highlight support for vue
Plug 'majutsushi/tagbar'
Plug 'mhartington/oceanic-next'
Plug 'alvan/vim-closetag'  " auto complete html tabs
Plug 'jiangmiao/auto-pairs'  " [, {, ( 自动匹配
Plug 'Yggdroot/indentLine'  " indent line

if has('nvim')
  " Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
  Plug 'othree/csscomplete.vim'  " css extension
  Plug 'roxma/nvim-completion-manager'
  Plug 'roxma/python-support.nvim'
  Plug 'roxma/nvim-cm-tern',  {'do': 'npm install'}  " (optional) javascript completion
else
  Plug 'Valloric/YouCompleteMe', { 'do': function('BuildYCM') }
endif

call plug#end()  " Initialize plugin system


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                Plugin Settings                               "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" set completeopt=menuone,preview

""" alvan/vim-closetag """
" filenames like *.xml, *.html, *.xhtml, ...
let g:closetag_filenames = "*.html,*.xhtml,*.phtml,*.vue,*.wxml"

" """ bling/vim-bufferline """
" " denotes whether bufferline should automatically echo to the command bar
" let g:bufferline_echo = 0
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#tab_nr_type = 1 " tab number
let g:airline#extensions#tabline#show_tab_nr = 1
let g:airline#extensions#tabline#formatter = 'default'
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline#extensions#tabline#fnametruncate = 16
let g:airline#extensions#tabline#fnamecollapse = 2
let g:airline#extensions#tabline#buffer_idx_mode = 1
" let g:bufferline_show_bufnr = 0  " disable the original bufferline

""" davidhalter/jedi-vim """
" let g:jedi#completions_command = "<Tab>"
let g:jedi#completions_enabled = 0

""" easymotion/vim-easymotion """
let g:EasyMotion_smartcase = 1
" map <Leader>j <Plug>(easymotion-j)
" map <Leader>k <Plug>(easymotion-k)
map <Leader><Leader>l <Plug>(easymotion-lineforward)
map <Leader><Leader>h <Plug>(easymotion-linebackward)
let g:EasyMotion_startofline = 0 " keep cursor column when JK motion

""" ervandew/supertab """
" let g:SuperTabDefaultCompletionType = "<c-n>"

""" kien/ctrlp.vim """
""" - Change the default mapping and the default command to invoke CtrlP:
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
""" - When invoked, unless a starting directory is specified, CtrlP will set its
""" local working directory according to this variable:
let g:ctrlp_working_path_mode = 'ra'
""" 'c' - the directory of the current file.
""" 'r' - the nearest ancestor that contains one of these directories or files:
""" .git .hg .svn .bzr _darcs
""" 'a' - like c, but only if the current working directory outside of CtrlP is
""" not a direct ancestor of the directory of the current file.
""" 0 or '' (empty string) - disable this feature.
""" Define additional root markers with the g:ctrlp_root_markers option.
""" - Exclude files and directories using Vim's wildignore and CtrlP's own
""" `g:ctrlp_custom_ignore`:
set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux
set wildignore+=*/node_modules/*,*/DS_Store/*
""" set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe  " Windows
set wildignore+=*.pyc " For coding
""" let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
  \ 'file': '\v\.(exe|so|dll)$',
  \ 'link': 'SOME_BAD_SYMBOLIC_LINKS',
  \ }
""" - Use a custom file listing command:
" let g:ctrlp_user_command = 'find %s -type f'        " MacOSX/Linux
" let g:ctrlp_user_command = 'dir %s /-n /b /s /a-d'  " Windows
""" The maximum number of files to scan, set to 0 for no limit:
let g:ctrlp_max_files = 0
""" *'g:ctrlp_lazy_update'*
""" Set this to 1 to enable the lazy-update feature: only update the match
""" window after typing's been stopped for a certain amount of time:
" let g:ctrlp_lazy_update = 1
""" Command to clear all ctrlp cache
"""  *:CtrlPClearAllCaches*
""" Delete all the cache files saved in |g:ctrlp_cache_dir| location.
""" :CtrlPClearAllCaches
nnoremap <Leader>ll :CtrlPBuffer<CR><Space>

""" majutsushi/tagbar """
let g:tagbar_sort = 0
nmap <F3> :TagbarToggle<CR>
map <F12> :!ctags -R --languages=python --exclude={.git,node_modules} .<CR>
" TODO: 加入其他语言的 tags

""" mileszs/ack.vim """
""" not jump to the first result
cnoreabbrev Ack Ack!
nnoremap <Leader>a :Ack!<Space>
" use ag if executable
if executable('ag')
  let g:ackprg = 'ag --vimgrep --ignore "tags"'
endif

""" othree/javascript-libraries-syntax.vim """
let g:used_javascript_libs = 'jquery,angularjs,angularui,angularuirouter,vue'

""" posva/vim-vue """
" fix: My syntax highlighting stops working randomly
nnoremap <leader>ff :syntax sync fromstart<CR>

""" roxma/nvim-completion-manager """
if has('nvim')
  " for python completions
  let g:python_support_python2_requirements = add(get(g:,'python_support_python2_requirements',[]),'jedi')
  let g:python_support_python3_requirements = add(get(g:,'python_support_python3_requirements',[]),'jedi')
  " " language specific completions on markdown file
  " let g:python_support_python3_requirements = add(get(g:,'python_support_python3_requirements',[]),'mistune')
  autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS noci
  set shortmess+=c
  inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
  inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
endif

""" Shougo/deoplete.nvim """
if has('nvim')
    let g:deoplete#enable_at_startup = 1
    " inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
    " inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
endif

""" scrooloose/nerdtree """
let NERDTreeWinPos='left'
let NERDTreeWinSize=30
map <F2> :NERDTreeToggle<CR>

""" scrooloose/syntastic """
" " 通过安装syntastic插件，每次保存文件时Vim都会检查代码的语法：
" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*
" let g:syntastic_always_populate_loc_list = 1
" " " 1 for auto showing of location list
" " let g:syntastic_auto_loc_list = 1
" let g:syntastic_check_on_open = 1
" let g:syntastic_check_on_wq = 0
" " solution of ignore syntax check because of Angular warning
" " but :SyntasticCheck can still be run for syntax checking
" " more solutions can be find below:
" " https://github.com/vim-syntastic/syntastic/issues/240
" let syntastic_mode_map = { 'passive_filetypes': ['html'] }
" " let g:syntastic_html_tidy_ignore_errors = [
" "   \ 'plain text isn''t allowed in <head> elements',
" "   \ '<base> escaping malformed URI reference',
" "   \ 'discarding unexpected <body>',
" "   \ '<script> escaping malformed URI reference',
" "   \ '</head> isn''t allowed in <body> elements',
" "   \ 'trimming empty',
" "   \ 'proprietary attribute',
" "   \ '',
" "   \ '<img> lacks "alt" attribute'
" "   \ ]

""" Valloric/YouCompleteMe """
""" 确保了在你完成操作之后，自动补全窗口不会消失
" let g:ycm_autoclose_preview_window_after_completion=1
""" 定义了“转到定义”的快捷方式
" map <leader>g :YcmCompleter GoToDefinitionElseDeclaration<CR>
""" fix 'User defined completion (^U^N^P) Pattern not found'
" set shortmess+=c
" let g:ycm_python_binary_path = 'python'
" let g:ycm_seed_identifiers_with_syntax = 1    "开启关键字语法检测
" let g:ycm_min_num_of_chars_for_completion = 99 " This disables the popup
" let g:ycm_key_invoke_completion = '<Tab>'
" function! SwitchTrigger()
"     if g:ycm_auto_trigger == 0
"         let g:ycm_auto_trigger = 1  "turn on YCM
"     else
"         let g:ycm_auto_trigger = 0  " turn off YCM
"     endif
" endfunction
" nnoremap <leader><Tab> :call SwitchTrigger()<CR>

""" tpope/vim-fugitive """
set statusline+=%{exists('g:loaded_fugitive')?fugitive#statusline():''}
cnoreabbrev Gca Gcommit -v -a

""" vim-airline/vim-airline """
""" This is disabled by default; add the following to your vimrc to enable the extension:
let g:airline#extensions#tabline#enabled = 1
""" 底端显示两行
set laststatus=2
let g:airline_theme='oceanicnext'
let g:airline_powerline_fonts=1
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
""" unicode symbols for vim-airline
" let g:airline_left_sep = '»'
" let g:airline_left_sep = '▶'
" let g:airline_right_sep = '«'
" let g:airline_right_sep = '◀'
let g:airline_symbols.crypt = '🔒'
" let g:airline_symbols.linenr = '␊'
" let g:airline_symbols.linenr = '␤'
" let g:airline_symbols.linenr = '¶'
let g:airline_symbols.maxlinenr = '☰'
" let g:airline_symbols.maxlinenr = ''
" let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
" let g:airline_symbols.paste = 'Þ'
" let g:airline_symbols.paste = '∥'
let g:airline_symbols.spell = 'Ꞩ'
let g:airline_symbols.notexists = '∄'
let g:airline_symbols.whitespace = 'Ξ'
""" powerline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''
""" old vim-powerline symbols
" let g:airline_left_sep = '⮀'
" let g:airline_left_alt_sep = '⮁'
" let g:airline_right_sep = '⮂'
" let g:airline_right_alt_sep = '⮃'
" let g:airline_symbols.branch = '⭠'
" let g:airline_symbols.readonly = '⭤'

""" Valloric/MatchTagAlways """
nnoremap <leader>% :MtaJumpToOtherTag<CR>

""" w0rp/ale """
let g:ale_linters = {
\   'html': ['proselint'],
\   'javascript': ['eslint'],
\   'coffeescript': ['coffeelint'],
\   'css': ['stylelint'],
\   'scss': ['scsslint'],
\   'sass': ['stylelint'],
\   'json': ['jsonlint'],
\   'python': ['flake8'],
\   'vim': ['vint'],
\}
" ignore flask8 length error
let g:ale_python_flake8_args='--max-line-length=120'
" let g:ale_lint_delay=500  " 200 default
" let g:airline#extensions#ale#enabled = 1
let g:ale_pattern_options = {
\   '\.wxml$': {'ale_enabled': 0},
\   '\.wxss$': {'ale_enabled': 0}
\}
nmap <silent> <leader>ek <Plug>(ale_previous_wrap)
nmap <silent> <leader>ej <Plug>(ale_next_wrap)

""" junegunn/fzf """
" set rtp+=/usr/local/opt/fzf

""" Yggdroot/indentLine """
" let g:indentLine_char = '│'
let g:indentLine_char = '¦'
let g:indentLine_enabled = 1
" autocmd Filetype json let g:indentLine_setConceal = 0
let g:vim_json_syntax_conceal = 0
