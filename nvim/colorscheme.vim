" set Vim-specific sequences for RGB colors
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"

" set runtimepath+=~/.vim/bundle/oceanic-next
" set runtimepath+=~/.local/share/nvim/plugged/oceanic-next
" " For Neovim 0.1.3 and 0.1.4
" let $NVIM_TUI_ENABLE_TRUE_COLOR=1
" Or if you have Neovim >= 0.1.5
if (has("termguicolors"))
 set termguicolors
endif
" Theme
syntax enable
let g:oceanic_next_terminal_bold = 1
let g:oceanic_next_terminal_italic = 1
" let g:oceanic_next_highlight_current_line = 1
" colorscheme OceanicNext
color dracula

""" custom highlight
hi CursorLineNR guifg=#ffffff "guibg=#1b2b34
" hi diffRemoved ctermfg=231 ctermbg=NONE cterm=None guifg=#f1fa8c guibg=NONE gui=NONE
hi link diffRemoved DiffDelete
hi link diffAdded DiffAdd

""" airline """
" let g:airline_theme='oceanicnext'
let g:airline_theme='dracula'
