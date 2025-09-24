" Copy (yank) to system clipboard
vnoremap <C-S-c> "+y

" Paste from system clipboard in normal mode
nnoremap <C-S-v> "+p

" Paste from system clipboard in insert mode
inoremap <C-S-v> <C-r>+

" Paste from system clipboard in command-line mode
cnoremap <C-S-v> <C-r>+

