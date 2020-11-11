
call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'vim-utils/vim-man'

"Plug 'vim-scripts/restore_view.vim'

Plug 'ericcurtin/curtineincsw.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'valloric/youcompleteme'
Plug 'puremourning/vimspector'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'vimwiki/vimwiki'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'scrooloose/nerdtree'
Plug 'pbrisbin/vim-mkdir'
Plug 'SirVer/ultisnips'
Plug 'felixhummel/setcolors.vim'
Plug 'mechatroner/rainbow_csv'

Plug 'honza/vim-snippets'

Plug 'ryanoasis/vim-devicons'
call plug#end()

