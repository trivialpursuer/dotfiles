call plug#begin("$XDG_CONFIG_HOME/nvim/plugged")
  Plug 'dense-analysis/ale'
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  Plug 'chrisbra/csv.vim'
  Plug 'junegunn/fzf'
  Plug 'junegunn/fzf.vim'
  Plug 'itchyny/lightline.vim'
  Plug 'scrooloose/nerdtree'
  Plug 'bfredl/nvim-miniyank'
  Plug 'wellle/targets.vim'
  Plug 'wellle/tmux-complete.vim'
  Plug 'moll/vim-bbye'
  Plug 'tpope/vim-fugitive'
  Plug 'simnalamburt/vim-mundo'
  Plug 'machakann/vim-sandwich'
  Plug 'yangmillstheory/vim-snipe'
  Plug 'honza/vim-snippets'
  Plug 'jez/vim-superman'
  Plug 'christoomey/vim-tmux-navigator'
  Plug 'simeji/winresizer'
call plug#end()

set clipboard+=unnamedplus

" Lightline
let g:lightline = {
      \ 'colorscheme': 'jellybeans',
      \ }
set noshowmode
set laststatus=2

" Color scheme.
set t_Co=256
let g:jellybeans_termcolors=256
set background=dark            	"First set background to dark.
colorscheme jellybeans		    "Finally, choose the only colorscheme that matters

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

set cursorline      " highlight entire line cursor is on
set history=50		" keep 50 lines of command line history
set ruler		    " show the cursor position all the time
set showcmd		    " display incomplete commands
set incsearch		" do incremental searching
set wildmenu        " autocomplete for command menu
set showmatch       " highlight matching brackets, braces, etc.
set lazyredraw      " redraw only when we need to, helps speed up things like macros
set foldenable      " enable folding
set foldlevelstart=99   "start with everything exposed
        
" Use 2 spaces instead of tab ()
" Copy indent from current line when starting a new line
set autoindent
set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2

" Allow hiding windows if unsaved
set hidden

" Define space bar as the leader key
nnoremap <space> <nop>
let mapleader = "\<space>"

nnoremap <leader>bn :bn<cr> ;buffer next
nnoremap <leader>tn gt ;tab next

" In many terminal emulators the mouse works just fine, thus enable it.
if has('mouse')
  set mouse=a
endif

" Nerdtree Config
autocmd VimEnter * NERDTree | wincmd p
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() |
  \ quit | endif
autocmd BufWinEnter * silent NERDTreeMirror

" Mundo Toggle
nnoremap <F5> :MundoToggle<CR>

" COC Extensions
let g:coc_global_extensions = [
  \ 'coc-snippets',
  \ 'coc-clangd', 
  \ 'coc-css', 
  \ 'coc-json', 
  \]

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
            \ pumvisible() ? "\<C-n>" :
            \ <SID>check_back_space() ? "\<TAB>" :
            \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
    let col = col('.') - 1
    return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
if has('nvim')
    inoremap <silent><expr> <c-space> coc#refresh()
else
    inoremap <silent><expr> <c-@> coc#refresh()
endif

" Make <CR> auto-select the first completion item and notify coc.nvim to
" format on enter, <cr> could be remapped by other vim plugin
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
            \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

nmap <leader>s <Plug>(coc-references)

