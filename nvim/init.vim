" " 兼容 vimrc 的配置
" set runtimepath+=~/.vim,~/.vim/after
" set packpath=~/.vim
" source ~/.vimrc

" " load plugin from ~/.vimrc
" if filereadable(expand("~/.vimrc"))
" source ~/.vimrc
" endif

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""" Color Scheme and Theme """"""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Specify a directory for plugins (for Neovim: ~/.local/share/nvim/plugged)
" call plug#begin('~/.vim/plugged')  " for vim
call plug#begin('~/.local/share/nvim/plugged')  " for neovim

if filereadable(expand("~/.config/nvim/plugin.vim"))
source ~/.config/nvim/plugin.vim
endif

if filereadable(expand("~/.config/nvim/colorscheme.vim"))
source ~/.config/nvim/colorscheme.vim
endif

" Initialize plugin system
call plug#end()

" " set syntax bright
" syntax enable
" set syntax=on

if filereadable(expand("~/.config/nvim/coding.vim"))
source ~/.config/nvim/coding.vim
endif

if filereadable(expand("~/.config/nvim/custom.vim"))
source ~/.config/nvim/custom.vim
endif