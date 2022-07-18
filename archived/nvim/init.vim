" the mapleader must be set before all map base of leader
" set <leader>
let g:mapleader = ','

if filereadable(expand("~/.config/nvim/plugins/init.vim"))
source ~/.config/nvim/plugins/init.vim
endif

if filereadable(expand("~/.config/nvim/general.vim"))
source ~/.config/nvim/general.vim
endif
