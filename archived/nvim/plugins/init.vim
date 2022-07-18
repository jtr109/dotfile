call plug#begin('~/.vim/plugged')

" Plugins
if filereadable(expand("~/.config/nvim/plugins/general.vim"))
source ~/.config/nvim/plugins/general.vim
endif

if filereadable(expand("~/.config/nvim/plugins/rust.vim"))
source ~/.config/nvim/plugins/rust.vim
endif

if filereadable(expand("~/.config/nvim/plugins/color.vim"))
source ~/.config/nvim/plugins/color.vim
endif

call plug#end()

" Plugin Configurations
if filereadable(expand("~/.config/nvim/plugins/general_cfg.vim"))
source ~/.config/nvim/plugins/general_cfg.vim
endif

if filereadable(expand("~/.config/nvim/plugins/rust_cfg.vim"))
source ~/.config/nvim/plugins/rust_cfg.vim
endif

if filereadable(expand("~/.config/nvim/plugins/color_cfg.vim"))
source ~/.config/nvim/plugins/color_cfg.vim
endif

