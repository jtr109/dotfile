" Configuration file for vim set modelines=0		" CVE-2007-2438

" Normally we use vim-extensions. If you want true vi-compatibility
" remove change the following statements
set nocompatible	" use vim defaults instead of 100% vi compatibility
set backspace=2		" more powerful backspacing

" don't write backup file if vim is being called by "crontab -e"
au bufwrite /private/tmp/crontab.* set nowritebackup nobackup
" don't write backup file if vim is being called by "chpass"
au bufwrite /private/etc/pw.* set nowritebackup nobackup


filetype on


""" colorscheme """ 

colorscheme molokai
" let g:molokai_original = 1
" let g:rehash256 = 1

set background=dark
" set background=light
" solarized_termtrans must be set for beautiful background color
let g:solarized_termtrans = 1
colorscheme solarized


""" link for bundles """
" load plugin from ~/.vim/.vimrc.bundles
if filereadable(expand("~/.vim/.vimrc.bundles"))
source ~/.vim/.vimrc.bundles
endif


""" LINK FOR CUSTOM SETTING """
" load plugin from ~/.vim/.vimrc.custom
if filereadable(expand("~/.vim/.vimrc.custom"))
source ~/.vim/.vimrc.custom
endif


""" LINK FOR CUSTOM SETTING """
" load plugin from ~/.vim/.vimrc.coding
if filereadable(expand("~/.vim/.vimrc.coding"))
source ~/.vim/.vimrc.coding
endif


syntax on 
