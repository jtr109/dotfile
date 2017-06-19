" Nerdtree
Plug 'scrooloose/nerdtree'
let NERDTreeWinPos='left'
let NERDTreeWinSize=30
map <F2> :NERDTreeToggle<CR>

" Vim-airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" This is disabled by default; add the following to your vimrc to enable the extension:
let g:airline#extensions#tabline#enabled = 1
" 底端显示两行
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
let g:airline_symbols.linenr = '␤'
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
" let g:airline_symbols.branch = ''
" let g:airline_symbols.readonly = ''
" let g:airline_symbols.linenr = ''
""" old vim-powerline symbols
" let g:airline_left_sep = '⮀'
" let g:airline_left_alt_sep = '⮁'
" let g:airline_right_sep = '⮂'
" let g:airline_right_alt_sep = '⮃'
let g:airline_symbols.branch = '⭠'
let g:airline_symbols.readonly = '⭤'
" " set guifont
" set guifont=Meslo\ LG\ S\ DZ\ for\ Powerline:h12
" set guifont=Monaco\ for\ Powerline:h12
" set guifontwide=Monaco\ for\ Powerline:h12

" markdown 目录自动生成
Plug 'mzlogin/vim-markdown-toc'

function! BuildYCM(info)
  " info is a dictionary with 3 fields
  " - name:   name of the plugin
  " - status: 'installed', 'updated', or 'unchanged'
  " - force:  set on PlugInstall! or PlugUpdate!
  if a:info.status == 'installed' || a:info.force
    !./install.py --clang-completer --tern-completer
  endif
endfunction
Plug 'Valloric/YouCompleteMe', { 'do': function('BuildYCM') }
" 确保了在你完成操作之后，自动补全窗口不会消失
let g:ycm_autoclose_preview_window_after_completion=1
" 定义了“转到定义”的快捷方式
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>
" " " fix 'User defined completion (^U^N^P) Pattern not found'
" " set shortmess+=c

" " python 跳转
" Plug 'davidhalter/jedi-vim'

" 异步语法检测插件
Plug 'w0rp/ale'
let g:ale_linters = {
\   'html': ['proselint'],
\   'javascript': ['eslint'],
\   'coffeescript': ['coffeelint'],
\   'css': ['stylelint'],
\   'scss': ['stylelint'],
\   'sass': ['stylelint'],
\   'json': ['jsonlint'],
\   'python': ['flake8'],
\   'vim': ['vint'],
\}
" ignore flask8 length error
let g:ale_python_flake8_args='--max-line-length=120'
let g:ale_lint_delay=500  " 200 default

" " 通过安装syntastic插件，每次保存文件时Vim都会检查代码的语法：
" Plug 'scrooloose/syntastic'
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

" vim 全局搜索工具 ack.vim
" 用法详见 Ack 官方文档: https://beyondgrep.com/documentation/
Plug 'mileszs/ack.vim'
" not jump to the first result
cnoreabbrev Ack Ack!
nnoremap <Leader>a :Ack!<Space>
" use ag if executable
if executable('ag')
  let g:ackprg = 'ag --vimgrep --ignore "tags"'
endif

" ctrlp.vim 全局文件跳转插件
Plug 'kien/ctrlp.vim'
" ctrlp 配置:
" - Change the default mapping and the default command to invoke CtrlP:
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
" - When invoked, unless a starting directory is specified, CtrlP will set its
" local working directory according to this variable:
let g:ctrlp_working_path_mode = 'ra'
" 'c' - the directory of the current file.
" 'r' - the nearest ancestor that contains one of these directories or files:
" .git .hg .svn .bzr _darcs
" 'a' - like c, but only if the current working directory outside of CtrlP is
" not a direct ancestor of the directory of the current file.
" 0 or '' (empty string) - disable this feature.
" Define additional root markers with the g:ctrlp_root_markers option.
" - Exclude files and directories using Vim's wildignore and CtrlP's own
" `g:ctrlp_custom_ignore`:
set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux
set wildignore+=*/node_modules/*,*/DS_Store/*
" set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe  " Windows
set wildignore+=*.pyc " For coding
" let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
  \ 'file': '\v\.(exe|so|dll)$',
  \ 'link': 'SOME_BAD_SYMBOLIC_LINKS',
  \ }
" - Use a custom file listing command:
" let g:ctrlp_user_command = 'find %s -type f'        " MacOSX/Linux
" let g:ctrlp_user_command = 'dir %s /-n /b /s /a-d'  " Windows
" The maximum number of files to scan, set to 0 for no limit:
let g:ctrlp_max_files = 0
" *'g:ctrlp_lazy_update'*
" Set this to 1 to enable the lazy-update feature: only update the match
" window after typing's been stopped for a certain amount of time:
" let g:ctrlp_lazy_update = 1
" " Command to clear all ctrlp cache
" "  *:CtrlPClearAllCaches*
" " Delete all the cache files saved in |g:ctrlp_cache_dir| location.
" :CtrlPClearAllCaches

" filetype and syntax highlight support for vue
Plug 'posva/vim-vue'
" fix: My syntax highlighting stops working randomly
nnoremap <leader>f :syntax sync fromstart<CR>
autocmd FileType vue syntax sync fromstart
autocmd BufRead,BufNewFile *.vue setlocal filetype=vue.html.javascript.css
au BufNewFile,BufRead *.vue
  \ set tabstop=2 |
  \ set softtabstop=2 |
  \ syntax sync fromstart

Plug 'majutsushi/tagbar'
let g:tagbar_sort = 0
nmap <F3> :TagbarToggle<CR>
map <F12> :!ctags -R --languages=python --exclude={.git,node_modules} .<CR>  
" TODO: 加入其他语言的 tags

Plug 'alvan/vim-closetag'
" filenames like *.xml, *.html, *.xhtml, ...
let g:closetag_filenames = "*.html,*.xhtml,*.phtml,*.vue"

" auto complete html tabs
Plug 'alvan/vim-closetag'
" filenames like *.xml, *.html, *.xhtml, ...
let g:closetag_filenames = "*.html,*.xhtml,*.phtml,*.vue"

" [, {, ( 自动匹配
Plug 'jiangmiao/auto-pairs'

" indent line
Plug 'Yggdroot/indentLine'
" let g:indentLine_char = '│'
let g:indentLine_char = '¦'
let g:indentLine_enabled = 1

" html tag match highlight
Plug 'Valloric/MatchTagAlways'
nnoremap <leader>% :MtaJumpToOtherTag<CR>

" commentary.vim
Plug 'tpope/vim-commentary'

" bufferline
Plug 'bling/vim-bufferline'
" denotes whether bufferline should automatically echo to the command bar
let g:bufferline_echo = 0
let g:airline#extensions#tabline#tab_nr_type = 1 " tab number
let g:airline#extensions#tabline#show_tab_nr = 1
let g:airline#extensions#tabline#formatter = 'default'
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline#extensions#tabline#fnametruncate = 16
let g:airline#extensions#tabline#fnamecollapse = 2
" let g:airline#extensions#tabline#buffer_idx_mode = 1
" let g:bufferline_show_bufnr = 0  " disable the original bufferline

" Plug 'othree/javascript-libraries-syntax.vim'
" let g:used_javascript_libs = 'jquery,angularjs,angularui,angularuirouter,vue'

" git file change tips
Plug 'airblade/vim-gitgutter'

" vim-coffee-script
Plug 'kchmck/vim-coffee-script'

" vim-surround
Plug 'tpope/vim-surround'

" vim respeat
" Support the surround register repeat
Plug 'tpope/vim-repeat'

" fugitive.vim
Plug 'tpope/vim-fugitive'
set statusline+=%{exists('g:loaded_fugitive')?fugitive#statusline():''}
