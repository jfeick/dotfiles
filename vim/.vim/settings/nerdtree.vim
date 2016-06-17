" NERDTree specific settings

" Open NERDTree when we are starting vim without a filename
"autocmd StdinReadPre * let s:std_in=1
"autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" map <C-n> to NERDTree
map <C-n> :NERDTreeToggle<CR>

" close, if NERDTree is the only left window
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" ignore some filetypes
let NERDTreeIgnore=['\.pyc$', '\~$']

" disable 'Press ? for help' message
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
