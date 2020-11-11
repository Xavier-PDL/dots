autocmd BufNew,BufEnter *.cpp,*.hpp,*.c,*.h execute "silent! CocDisable"
autocmd BufLeave *.cpp,*.hpp,*.c,*.h execute "silent! CocEnable"
let g:ycm_filetype_whitelist = {'cpp': 1, 'c': 1}

let g:ycm_filetype_blacklist = {
            \ 'vim': 1,         
            \ 'lua': 1,         
            \ 'json': 1,        
            \ }
set fp=astyle\ -A1s4SNxC80
set ep=astyle\ -A1s4SNxC80
"set cino=g-1=0
"set foldenable
"set foldmethod=syntax           " fold by syntax
"set foldnestmax=1               " allow only 1 fold to be made
set fo+=jn

"map <F5> <ESC>:w<CR>:make clean<CR>:make<CR>:make test<CR>
"imap <F5> <ESC>:w<CR>:make clean<CR>:make<CR>:make test<CR>
nnoremap <leader>b :w<CR>:make!<CR>
nnoremap <leader>r :make! test<CR>
