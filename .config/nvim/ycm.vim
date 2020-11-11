let g:ycm_filetype_whitelist = {'c': 1, 'cpp':1}

" Let clangd fully control code completion
let g:ycm_clangd_uses_ycmd_caching = 0
" Use installed clangd, not YCM-bundled clangd which doesn't get updates.
let g:ycm_clangd_binary_path = exepath("clangd")

nnoremap <leader>gf :YcmComplete GoToDefinition<CR>
nnoremap <leader>gd :YcmComplete GoToDeclaration<CR>
nnoremap <leader>gt :YcmComplete GoToType<CR>
nnoremap <leader>z :YcmComplete FixIt<CR>

set completeopt-=preview


