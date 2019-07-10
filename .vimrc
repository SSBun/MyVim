let mapleader = ","	" Set up leader key
" ======== Key mapping ========
inoremap <esc> <nop>
inoremap jk <esc>

" ======== File manage ========
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>
nnoremap <leader>ss :write<cr>

" ========== Window manage =========
nnoremap <leader>gh <c-w>h
nnoremap <leader>gj <c-w>j
nnoremap <leader>gk <c-w>k
nnoremap <leader>gl <c-w>l

set nocompatible	" Close Vi compatible mode
syntax on		" Open syntax highlight

" ========== Scheme ==========

if has("gui_running")
set guifont=Fira_Code:h12       " Set up GUI Vim font
endif

set t_CO=256	    	        " Set Vim color space
colorscheme atom-dark-256	" Set TUI Vim color scheme

" test test test






