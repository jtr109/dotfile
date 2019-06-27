" the mapleader must be set before all map base of leader
" set <leader>
let g:mapleader = ','

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""" Color Scheme and Theme """"""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

if filereadable(expand("~/.config/nvim/plugins/init.vim"))
source ~/.config/nvim/plugins/init.vim
endif

" if filereadable(expand("~/.config/nvim/colorscheme.vim"))
" source ~/.config/nvim/colorscheme.vim
" endif

" if filereadable(expand("~/.config/nvim/coding.vim"))
" source ~/.config/nvim/coding.vim
" endif

" if filereadable(expand("~/.config/nvim/mapping.vim"))
" source ~/.config/nvim/mapping.vim
" endif

if filereadable(expand("~/.config/nvim/custom.vim"))
source ~/.config/nvim/custom.vim
endif
