set clipboard+=unnamedplus

" Disable swap files
set noswapfile

" Save undo-trees in files
set undofile
set undodir=$HOME/.config/nvim/undo

" number of undos saved
set undolevels=10000
set undoreload=10000

" set line number
set number
        
" Use 2 spaces instead of tab ()
" Copy indent from current line when starting a new line
set autoindent
set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2
