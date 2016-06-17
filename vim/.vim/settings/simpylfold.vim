" Plugin SimpylFold settings
let g:SimpylFold_docstring_preview = 1
let g:SimpylFold_fold_import = 0
autocmd BufWinEnter *.py setlocal foldexpr=SimpylFold(v:lnum) foldmethod=expr
autocmd BufWinLeave *.py setlocal foldexpr< foldmethod<
"set nofoldenable
set foldlevelstart=20
set foldlevelstart=20 
