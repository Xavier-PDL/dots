" This shit's a little harder than I thought it would be.
" Switching gears and going to finish my LL bot
" Will come back after.

" many of these rules work by implementing rules that match a larger pattern
" and whittle down the working search area.


"syn match pyMod ".*\." contained
"syn keyword pythonInclude from import nextgroup=pyMod

" CONST: Word in all caps
syn match pyConst "[A-Z_][A-Z0-9_]*\>" display contained
syn match pyConstant "\.*[A-Z_][A-Z0-9_]*\>" contains=pyConst 
"syn match pyConst "\v\ze\.*[A-Z_][A-Z0-9_]*\>\ze\s+" display contained
"syn match pyConst "\v\zs[A-Z0-9_]+\ze\s+" display
syn match pyFunction "\v\zs\w+\ze\(" display

"hi def link pyMod Normal
"hi def link pyConst Special
hi def link pyConst Constant
"hi def link pyObject Number
hi def link pyFunction SpecialFunction
"hi def link pyFunction SpecialFunction
hi SpecialFunction ctermfg=128

