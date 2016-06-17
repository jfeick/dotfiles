" View specific settings to save and restore view of a file

set viewoptions=cursor,slash,unix ",folds
set viewoptions-=options

"augroup vimrc
"    autocmd BufWinLeave *
"    \   if expand('%') != '' && &buftype !~ 'nofile'
"    \|      mkview
"    \|  endif
"    autocmd BufRead *
"    \   if expand('%') != '' && &buftype !~ 'nofile'
"    \|      silent loadview
"    \|  endif
"augroup END

let g:skipview_files = ['*\.vim']
