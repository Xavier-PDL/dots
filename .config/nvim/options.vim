set number                      " enable line numbers
set relativenumber              " enable relative line numbers

set tabstop=4                   " set tab width to 4
set softtabstop=4               " number of space in tab when editing
set expandtab                   " expand tab to spaces
set shiftwidth=4
set autoindent
set mouse=nvi                   " Enable mouse in normal/visual/insert mode

"set textwidth=79                " enable line break at 79 chars.
set nowrap
"set sidescrolloff=40
"set sidescrolloff=1
"set showbreak=↪\
"set breakindent
set cursorline                  " highlight the line cursor is currently on
set colorcolumn=80
set wildmenu                    " visual autocomplete for command menu
set showmatch                   " highlight matching {[()]}

set nobackup
set nowritebackup
set undofile
set undodir=~/.vim/undodir

set updatetime=300
set shortmess+=c

set incsearch                   " search as characters are entered
set hlsearch                    " highlight all matches

"set foldenable                  " enable folding
"set foldmethod=syntax           " fold by syntax
"set foldnestmax=1               " allow only 1 fold to be made

" Split windows like normal people...
set splitbelow
set splitright
