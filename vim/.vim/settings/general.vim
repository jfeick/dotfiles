" Disable vi compatibility to be iMproved
set nocompatible

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
set encoding=utf8

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
noremap <Left> :echoerr "Stop being stupid!"<CR>ri 
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
