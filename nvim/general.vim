"""""""" system """"""""
set clipboard=unnamed       " 你可以通过这行代码访问你的系统剪贴板：

"""""""" file """"""""
set enc=utf-8
set fencs=utf-8,ucs-bom,shift-jis,gb18030,gbk,gb2312,cp936
set termencoding=utf-8


"""""""" editor """"""""
set number
set relativenumber
set scrolloff=3             " 在上下移动光标时，光标的上方或下方至少会保留显示的行数

"""""""" shortcut """"""""
" break line in normal mode, you can use <c-j> to break a line
:nnoremap <NL> i<CR><ESC>
" map :b#, switch to the previous buffer
:noremap <leader>b :b#<CR>

" insert 模式下上下加空行
" :imap <C-j> <esc>o
" :imap <C-k> <esc>O

" vim 自身命令行模式智能补全
set wildmenu
set wildmode=full
" 高亮当前行列, 十字光标
" set cursorline 
" set cursorcolumn
" 代码折叠
" set foldmethod=indent
" set foldlevel=99

""" 关于 highlight search """
" " 开启: `:set hlsearch`
" " 关闭: `:set nohlsearch
" " 临时关闭: `:noh`, `:nohlsearch`
" " Press Space to turn off highlighting and clear any message already displayed.
" :nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>
" Press F4 to toggle highlighting on/off, and show current value.
" :set nohlsearch
" :noremap <F4> :set hlsearch! hlsearch?<CR>
:noremap <leader>hl :set hlsearch! hlsearch?<CR>
" " Or, press return to temporarily get out of the highlighted search.
" :nnoremap <CR> :nohlsearch<CR><CR>

" use mouse mode
" set mouse=a

"""""""" search """"""""
" Case insensitive
set ignorecase
" Automatically switch to a case-sensitive search
" if any capital letters was used
" Should be set with ignorecase
set smartcase


" " set guifont
" set guifont=Meslo\ LG\ S\ DZ\ for\ Powerline:h12
" set guifont=Monaco\ for\ Powerline:h12
" set guifontwide=Monaco\ for\ Powerline:h12


""""""""""""""""""" Config necessary for Vim only """"""""""""""""""""""""""""""
" set backspace
" set backspace=indent,eol,start

" set font in MacVim
" if has('gui_macvim')
"   set guifont=Meslo\ LG\ S\ DZ\ for\ Powerline:h12
"   " set guioptions
"   set guioptions-=r
"   set guioptions-=L
"   set guioptions-=T
" endif
