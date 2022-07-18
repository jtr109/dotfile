" using ripgrep for searching files
" --hidden means showing hidden files
" --glob '!.git' means exclude the .git directories
let $FZF_DEFAULT_COMMAND = "rg --files --hidden --glob '!.git'"

map <leader>ff :Files<CR>
map <leader>fr :Rg<CR>
map <leader>ll :Buffers<CR>

" PREREQUIREMENTS:
" cargo install ripgrep
