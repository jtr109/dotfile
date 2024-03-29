call plug#begin()

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" # rust-analyzer {{{

" Collection of common configurations for the Nvim LSP client
Plug 'neovim/nvim-lspconfig'

" Completion framework
Plug 'hrsh7th/nvim-cmp'

" LSP completion source for nvim-cmp
Plug 'hrsh7th/cmp-nvim-lsp'

" Snippet completion source for nvim-cmp
Plug 'hrsh7th/cmp-vsnip'

" Other usefull completion sources
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-buffer'

" See hrsh7th's other plugins for more completion sources!

" To enable more of the features of rust-analyzer, such as inlay hints and more!
Plug 'simrat39/rust-tools.nvim'

" Snippet engine
Plug 'hrsh7th/vim-vsnip'

" Fuzzy finder
" Optional
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

" Color scheme used in the GIFs!
" Plug 'arcticicestudio/nord-vim'

" }}}

" toggle comments
Plug 'tpope/vim-commentary'

" file tree
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

" fzf
" https://github.com/junegunn/fzf
Plug 'junegunn/fzf', { 'do': { -> fzf#install() }}
Plug 'junegunn/fzf.vim'

" move cursor easier
Plug 'easymotion/vim-easymotion'

" smarter highlighting
Plug 'romainl/vim-cool'

" multiple selection such as ctrl-d in VSCode
" using Ctrl-n to select same words under cursor
Plug 'mg979/vim-visual-multi', {'branch': 'master'}

" auto complete pairs
Plug 'jiangmiao/auto-pairs'

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" # color theme {{{
" Plug 'overcache/NeoSolarized'
" }}}


call plug#end()

