"commands go here....

" Make a new tex file with template
function NewTexDoc(filename)
    silent execute "!cp ~/.config/nvim/template/tex ./" . a:filename
    silent execute "e " . a:filename
    redraw!
endfunction
