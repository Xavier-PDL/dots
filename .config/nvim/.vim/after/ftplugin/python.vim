" Run current file
nmap <F5> :!python3 %<CR>
nmap <F6> :!./run.sh<CR>

"set foldenable
"set foldmethod=indent
"set foldnestmax=1

command -nargs=0 Ss source ~/.config/nvim/.vim/after/syntax/python.vim
