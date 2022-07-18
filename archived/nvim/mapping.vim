""" For mark-mothion
nnoremap ` '
nnoremap `` ''
nnoremap ' `
nnoremap '' ``
vnoremap ` '
vnoremap `` ''
vnoremap ' `
vnoremap '' ``

nnoremap <Leader>m :let @/='\<'.expand("<cword>").'\>'<CR>
