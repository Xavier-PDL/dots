set textwidth=79
nnoremap <leader>z 1z=

nnoremap <C-s> :w<CR>:!pdflatex %<CR><CR>
inoremap <C-s> <ESC>:w<CR>:!pdflatex %<CR><CR>a

" Open in zathura
:nmap <F5> :!zathura "%<."pdf&<CR><CR>
:imap <F5> <ESC>:!zathura "%<."pdf&<CR>a
