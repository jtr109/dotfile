""" for coding """

function! MaxCharLine(mx)
    " 添加80字符竖线, 由于 colorcolumn 是 7.3+ 加入的功能, 加入判断
    if exists('+colorcolumn')
      let &colorcolumn=a:mx
    else
      au BufWinEnter * let w:m2=matchadd('ErrorMsg', '\%>80v.\+', -1)
    endif
endfunction

au BufNewFile,BufRead *.scm
  \ set tabstop=2 |
  \ set softtabstop=2 |
  \ set shiftwidth=2 |
  \ set expandtab |
  \ set autoindent |

au BufNewFile,BufRead *.md
  \ set conceallevel=0

au BufNewFile,BufRead *.py
  \ set tabstop=4 |
  \ set softtabstop=4 |
  \ set shiftwidth=4 |
  \ set expandtab |
  \ set autoindent |
  \ set fileformat=unix |
  \ set textwidth=120 |
  \ call MaxCharLine(&textwidth) |
  \ filetype indent on

au BufNewFile,BufRead *.js,*.css,*.coffee,*.html,*.vue,*.wxml,*.wxss,*json
  \ set tabstop=2 |
  \ set softtabstop=2 |
  \ set shiftwidth=2 |
  \ set expandtab |
  \ set autoindent |
  \ set fileformat=unix |
  \ set textwidth=150 |
  \ call MaxCharLine(&textwidth)

" autocmd FileType vue syntax sync fromstart
autocmd BufRead,BufNewFile *.vue setlocal filetype=vue.html.javascript.css
" au BufNewFile,BufRead *.vue
"   \ set tabstop=2 |
"   \ set softtabstop=2 |
"   \ syntax sync fromstart

autocmd FileType vim
  \ set tabstop=2 |
  \ set softtabstop=2 |
  \ set shiftwidth=2 |
  \ set expandtab |
  \ set autoindent |
  " \ set fileformat=unix |
  \ set textwidth=80 |
  \ call MaxCharLine(&textwidth)

au FileType gitcommit
  " \ syn match Comment "^%.*" |
  \ syn match gitcommitComment "^%.*" |
  \ syn match _ "^#.*"

" au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

" 编码设置为 utf-8
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
" au BufNewFile,BufRead *.py
"   \ highlight OverLength ctermbg=red ctermfg=white guibg=#592929
"   \ match OverLength /\%81v.\+/

