" Disable vi compatibility to be iMproved
if !has('nvim')
    set nocompatible
endif

" Set non-saved buffers hidden
set hidden

" Don't try to highlight lines longer than 800 characters.
set synmaxcol=800


" Sets how many lines of history VIM has to remember
set history=700

" Enable filetype plugins
filetype plugin on
filetype indent on

" Set to auto read when a file is changed from the outside
set autoread


"Always show current position
set ruler

" Ignore case when searching
set ignorecase

" When searching try to be smart about cases 
set smartcase

" Highlight search results
set hlsearch

" Show matching brackets when text indicator is over them
set showmatch


syntax enable

set background=dark


" Set utf8 as standard encoding and en_US as the standard language
if !has('nvim')
    set encoding=utf8
endif

" Use Unix as the standard file type
set ffs=unix,dos,mac

" Turn backup off, since most stuff is in SVN, git et.c anyway...
set nobackup
set nowb
set noswapfile

" Use spaces instead of tabs
set expandtab

" be smart when using tabs
set smarttab

" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4

set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines

" Always show the status line
set laststatus=2

" show line numbers
set number
" show relative line numbers
set relativenumber

" load project specific .vimrc files
set exrc

" allow only safe commands (no :autocmd, shell and write commands)
" unless project-specific .vimrc is owned by me
set secure

" enable hard mode
noremap <Up> :echoerr "Stop being stupid!"<CR>
noremap <Down> :echoerr "Stop being stupid!"<CR>
noremap <Left> :echoerr "Stop being stupid!"<CR>
noremap <Right> :echoerr "Stop being stupid!"<CR>

inoremap <up> <NOP>
vnoremap <up> <NOP>
inoremap <down> <NOP>
noremap <down> <NOP>
inoremap <left> <NOP>
vnoremap <left> <NOP>
inoremap <right> <NOP>
vnoremap <right> <NOP>

" automatically leave insert mode after 'updatetime' ms of inaction
au CursorHoldI * stopinsert

" set 'updatetime' to 10 seconds when in insert mode
au InsertEnter * let updaterestore=&updatetime | set updatetime=8000
au InsertLeave & let &updatetime=updaterestore

" Reselect visual block after indent/outdent
vnoremap < <gv
vnoremap > >gv

" force saving files that require root permission
cmap w!! %!sudo tee > /dev/null %
" clear search highlights
noremap <silent><Leader>/ :noh<CR>

" keep search pattern at the center of the screen
nnoremap <silent> n nzz
nnoremap <silent> N Nzz
nnoremap <silent> * *zz
nnoremap <silent> # #zz
nnoremap <silent> g* g*zz
nnoremap <silent> g# g*zz

" invisible characters
set nolist
set listchars=tab:▸\ ,eol:¬,trail:⋅,extends:❯,precedes:❮
set showbreak=↪

" toggle invisibles
noremap <Leader>i :set list!<CR>

" scroll behaviour
" Number of lines from vertical edge to start scrolling
set scrolloff=5
" Number of cols from horizontal edge to start scrolling
set sidescrolloff=15
" Number of cols to scroll at a time
set sidescroll=1
