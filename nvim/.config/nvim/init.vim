" # Basic settings

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Appearance {{{

" line number
set number
set relativenumber

" at least N lines show above/below after cursor scrolling
set scrolloff=3

" true color
if exists("&termguicolors") && exists("&winblend")
  syntax enable
  set termguicolors
  set winblend=0
  set wildoptions=pum
  set pumblend=5
  set background=dark
  " Use NeoSolarized
  runtime ./colors/NeoSolarized.vim
endif

" }}}

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" # Searching {{{

" DEPRECATED: the plugin 'romainl/vim-cool' can provide a smarter searching highlighting
" " Press Space to turn off highlighting and clear any message already displayed.
" :nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>
" Press F4 to toggle highlighting on/off, and show current value.
" :set nohlsearch
" :noremap <F4> :set hlsearch! hlsearch?<CR>
" :noremap <leader>hl :set hlsearch! hlsearch?<CR>
" " Or, press return to temporarily get out of the highlighted search.
" :nnoremap <CR> :nohlsearch<CR><CR>

" ignore case on searching
:set ignorecase
" case sensitive if there is any upper case in the searching text
:set smartcase
" to make searching sensitive when using, you can use
" :set noigorecase

" }}}

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" # Mouse {{{
" open mouse mode by default
: set mouse=a

" }}}

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
runtime ./plug.vim
runtime ./maps.vim

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" #References {{{

" * https://github.com/craftzdog/dotfiles-public/tree/master/.config/nvim

" my own configs (archived)
" https://github.com/craftzdog/dotfiles-public/tree/master/.config/nvim
" }}}
