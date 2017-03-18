" Configuration file for vim
set modelines=0		" CVE-2007-2438

" Normally we use vim-extensions. If you want true vi-compatibility
" remove change the following statements
set nocompatible	" use vim defaults instead of 100% vi compatibility
set backspace=2		" more powerful backspacing

" don't write backup file if vim is being called by "crontab -e"
au bufwrite /private/tmp/crontab.* set nowritebackup nobackup
" don't write backup file if vim is being called by "chpass"
au bufwrite /private/etc/pw.* set nowritebackup nobackup

""" link for bundles """
" load plugin from ~/.vim/.vimrc.bundles
if filereadable(expand("~/.vim/.vimrc.bundles"))
source ~/.vim/.vimrc.bundles
endif


""" colorscheme """ 

colorscheme molokai
let g:molokai_original = 1
let g:rehash256 = 1

" set background=dark
" set background=light
" colorscheme solarized

""" settings """

" set line number
set number
set relativenumber

" set syntax bright
syntax enable
set syntax=on


" tab
set expandtab
set tabstop=4

" auto indent
set autoindent
set cindent
set smartindent
set shiftwidth=4

" search
set ignorecase

" set code
set enc=utf-8
set fencs=utf-8,ucs-bom,shift-jis,gb18030,gbk,gb2312,cp936

" 在上下移动光标时，光标的上方或下方至少会保留显示的行数
set scrolloff=3

"高亮当前行
set cursorline 

set cursorcolumn

" vim 自身命令行模式智能补全
set wildmenu

" 代码折叠
set foldmethod=indent
set foldlevel=99


""" for coding """

au BufNewFile,BufRead *.py
  \ set tabstop=4 |
  \ set softtabstop=4 |
  \ set shiftwidth=4 |
  \ set textwidth=79 |
  \ set expandtab |
  \ set autoindent |
  \ set fileformat=unix

au BufNewFile,BufRead *.js, *.html, *.css
\ set tabstop=2 |
\ set softtabstop=2 |
\ set shiftwidth=2

" au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

set encoding=utf-8

" python with virtualenv support
py << eof
import os
import sys
if 'virtual_env' in os.environ:
  project_base_dir = os.environ['virtual_env']
  activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
  execfile(activate_this, dict(__file__=activate_this))
eof

" 你可以通过这行代码访问你的系统剪贴板：
set clipboard=unnamed

" 添加一个指示器, 当单行字符数超过80个时提示
"   echo "Long lines highlighted"
"  else
"   call matchdelete(w:longlinehl)
"   unl w:longlinehl
"   echo "Long lines unhighlighted"
"  endif
" endfunction

" 添加一个指示器, 当单行字符数超过80个时提示多出的字符背景色变红
" 加入 au 指令, 保证只有再 py 文件下才会实现
au BufNewFile,BufRead *.py
  \ highlight OverLength ctermbg=red ctermfg=white guibg=#592929
  \ match OverLength /\%81v.\+/

" 添加80字符竖线, 由于 colorcolumn 是 7.3+ 加入的功能, 加入判断
if exists('+colorcolumn')
  set colorcolumn=81
else
  au BufWinEnter * let w:m2=matchadd('ErrorMsg', '\%>80v.\+', -1)
endif

" unicode symbols
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

" " powerline symbols
" let g:airline_left_sep = ''
" let g:airline_left_alt_sep = ''
" let g:airline_right_sep = ''
" let g:airline_right_alt_sep = ''
" let g:airline_symbols.branch = ''
" let g:airline_symbols.readonly = ''
" let g:airline_symbols.linenr = ''
" 
" " old vim-powerline symbols
let g:airline_left_sep = '⮀'
let g:airline_left_alt_sep = '⮁'
let g:airline_right_sep = '⮂'
let g:airline_right_alt_sep = '⮃'
let g:airline_symbols.branch = '⭠'
let g:airline_symbols.readonly = '⭤'
