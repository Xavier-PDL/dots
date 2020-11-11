set textwidth=79

"autocmd BufEnter,BufRead,BufNewFile *.md set filetype=markdown

:nmap <leader>z 1z=

:nmap <C-b> :w<CR>:call MDtoPDF(expand("%<."))<CR>
:imap <c-b> <Esc>:w<CR>:call MDtoPDF(expand("%<."))<CR>a

" Open in zathura
:nmap <F5> :!zathura "%<."pdf&<CR><CR>
:imap <F5> <ESC>:!zathura "%<."pdf&<CR>a

" png insert
:nmap <F9> i![](img/.png)<ESC>F.i
:imap <F9> ![](img/.png)<ESC>F.i
:nmap <F10> i<center>![](img/.png)</center><ESC>F.i
:imap <F10> <center>![](img/.png)</center><ESC>F.i

" html png insert
:nmap <F11> i<img src="img/.png"></img><ESC>F.i
:imap <F11> <img src="img/.png"></img><ESC>F.i
:nmap <F12> i<center><img src="img/.png"></img></center><ESC>F.i
:imap <F12> <center><img src="img/.png"></img></center><ESC>F.i

" jpg insert
":nmap <F11> i![](img/.jpg)<ESC>F.i
":imap <F11> ![](img/.jpg)<ESC>F.i
":nmap <F12> i<center>![](img/.jpg)</center><ESC>F.i
":imap <F12> <center>![](img/.jpg)</center><ESC>F.i

function MDtoPDF(fileName)
    silent execute "!markdown " . a:fileName . ".md > " . a:fileName . ".html"
    silent execute "!sed \"15r " . a:fileName . ".html\" ~/.vim/mdt.html > new" . a:fileName . ".html"
    silent execute "!wkhtmltopdf new" . a:fileName . ".html " . a:fileName . ".pdf"
    silent execute "!rm " . a:fileName . ".html"
    silent execute "!mv new" . a:fileName . ".html " . a:fileName . ".html"
    redraw!
endfunction
