" Turn off highlighting
nnoremap <leader><space> :nohlsearch<CR>

" Save with Ctrl+S in normal/insert mode.
nmap <c-s> :w<CR>
imap <c-s> <Esc>:w<CR>a

" Copy to clipboard from visual mode with Ctrl+C
vnoremap <C-c> "+y
" Paste from clipboard in normal mode with Ctrl+P
nnoremap <C-p> o<ESC>"+p

" Move cursor to window with arrow keys
nnoremap <down> <c-w>j
nnoremap <up> <c-w>k
nnoremap <left> <c-w>h
nnoremap <right> <c-w>l

" resize windows
nnoremap <c-l> <c-w>>
nnoremap <c-h> <c-w><
nnoremap <c-j> <c-w>-
nnoremap <c-k> <c-w>+

" quit window
nnoremap <c-q> :bp<CR>:bd #<CR>

" open directory listing
nnoremap <leader>d :NERDTree<CR>
"
" switch lines around
nnoremap <leader>j ddp
nnoremap <leader>k kddpk

" enable spell check
nnoremap <leader>l <ESC>:set spell spelllang=en_us<CR>
" disable spell check
nnoremap <leader>L <ESC>:set spell!<CR>

" Open file under cursor in a vertical window (to the right)
nnoremap gF <C-W>f<C-W>L

" Close current tab like in firefox
"nnoremap <C-W> :bd<CR>

" Open help vertically.
cabbrev h vert h
imap <F1> <ESC>:vert h<CR>
nmap <F1> :vert h<CR>
