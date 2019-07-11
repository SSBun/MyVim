let mapleader = ","	" set up leader key
" ======== key mapping ========
inoremap <esc> <nop>
inoremap jk <esc>
" add ; after current row
nnoremap <leader>; :normal! mqa;<esc>`q

" toggle display nerdtree
noremap <c-o> :NERDTreeToggle<cr>
" clear search highligh
noremap <leader>k :noh<cr>

" ======== file manage ========
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>
" Save file
nnoremap <leader>ss :write<cr> 

" fzf search files 
nnoremap <silent> <leader>f :Files<cr>
" fzf search buffers 
nnoremap <silent> <Leader>b :Buffers<cr>

" ========== Window manage =========
nnoremap <c-h> <c-w>h
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-l> <c-w>l

" ========== Scheme ==========
if has("gui_running")
set guifont=Fira_Code:h12       " Set up GUI Vim font
endif

set t_CO=256	    	        " Set Vim color space
colorscheme atom-dark-256	" Set TUI Vim color scheme

" Vimscript file settings -------------------------- {{{
augroup filetype_vim
    autocmd!
    autocmd FileType vim setlocal foldmethod=marker
augroup END
" }}}

" ======== Setting ========
set nocompatible	" Close Vi compatible mode
syntax on		" Open syntax highlight

" let g:syntastic_swift_swiftlint_use_defaults = 1 " Use swiftlint with default
" let g:syntastic_swift_checkers = ['swiftlint', 'swiftpm']

" Set lightline theme
let g:lightline = {'colorscheme': 'wombat'}

" Seatus line
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

" General
set number	" Show line numbers
set linebreak	" Break lines at word (requires Wrap lines)
set showbreak=+++	" Wrap-broken line prefix
set textwidth=100	" Line wrap (number of cols)
set showmatch	" Highlight matching brace
set visualbell	" Use visual bell (no beeping)
 
set hlsearch	" Highlight all search results
set smartcase	" Enable smart-case search
set ignorecase	" Always case-insensitive
set incsearch	" Searches for strings incrementally
 
set autoindent	" Auto-indent new lines
set expandtab	" Use spaces instead of tabs
set shiftwidth=4	" Number of auto-indent spaces
set smartindent	" Enable smart-indent
set smarttab	" Enable smart-tabs
set softtabstop=4	" Number of spaces per Tab
 
"" Advanced
set ruler	" Show row and column ruler information
set showtabline=2	" Show tab bar
 
set undolevels=1000	" Number of undo levels
set backspace=indent,eol,start	" Backspace behaviour

" ========= Vim plugins =========
call plug#begin('~/.vim/plugged')

" Make sure you use single quotes

" Syntastic is a syntax checking plugin for Vim
Plug 'vim-syntastic/syntastic'

" For swift
" Plug 'keith/swift.vim'

" fzf
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

" Powerline
Plug 'itchyny/lightline.vim'

" Nerdtree a guid tool for manage file tree
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'

" ALE
" Plug 'w0rp/ale'


" Initialize plugin system
call plug#end()







