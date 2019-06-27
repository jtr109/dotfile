call plug#begin('~/.vim/plugged')

" Plugins
if filereadable(expand("~/.config/nvim/plugins/common.vim"))
source ~/.config/nvim/plugins/common.vim
endif

if filereadable(expand("~/.config/nvim/plugins/rust.vim"))
source ~/.config/nvim/plugins/rust.vim
endif


" Environment Variables
if filereadable(expand("~/.config/nvim/plugins/common_env.vim"))
source ~/.config/nvim/plugins/common_env.vim
endif

if filereadable(expand("~/.config/nvim/plugins/rust_env.vim"))
source ~/.config/nvim/plugins/rust_env.vim
endif

call plug#end()
