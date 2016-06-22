" Set runtime path to include vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

    " Let Vungle manage Vundle, required
    Plugin 'VundleVim/Vundle.vim'
    "Plugin 'valloric/youcompleteme'
    "Plugin 'vim-scripts/restore_view.vim'
    "Plugin 'tmhedberg/SimpylFold'
    "Plugin 'hynek/vim-python-pep8-indent'
    Plugin 'ntpeters/vim-better-whitespace'
    "Plugin 'scrooloose/syntastic'
    "Plugin 'nvie/vim-flake8'
    "Plugin 'tell-k/vim-autopep8'
    Plugin 'scrooloose/nerdtree'
    "Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
    Plugin 'vim-airline/vim-airline'
    Plugin 'edkolev/promptline.vim'
    Plugin 'chriskempson/base16-vim' 
    Plugin 'vim-airline/vim-airline-themes'
    Plugin 'ryanoasis/vim-devicons'
    Plugin 'edkolev/tmuxline.vim'
    Plugin 'tpope/vim-fugitive'
    Plugin 'klen/python-mode'
    Plugin 'hynek/vim-python-pep8-indent'

call vundle#end()           " required
filetype plugin indent on   " required
" To ignore plugin indent changes, instead use:
"filetype plugin on

" Filetype detection off for vundle
filetype off

