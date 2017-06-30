syntax on
if has ("gui_running")
	if has ("win32")
		set guifont=Courier_New:h9
	endif
	colors zenburn
	if &diff
		" wide during diff to see both files
		set columns=200
	else
		" narrow for editing text
		set columns=120
	endif
	" Diff colors taken from theApprentice color scheme
	" https://github.com/romainl/Apprentice/blob/master/colors/apprentice.vim
	hi DiffAdd          ctermbg=235  ctermfg=108  guibg=#262626 guifg=#87af87 cterm=reverse        gui=reverse
	hi DiffChange       ctermbg=235  ctermfg=103  guibg=#262626 guifg=#8787af cterm=reverse        gui=reverse
	hi DiffDelete       ctermbg=235  ctermfg=131  guibg=#262626 guifg=#af5f5f cterm=reverse        gui=reverse
	hi DiffText         ctermbg=235  ctermfg=208  guibg=#262626 guifg=#ff8700 cterm=reverse        gui=reverse
endif
set lines=50
set backspace=indent,eol,start
" Don't bother with VI compatibility
set nocompatible
set history=50
set tabstop=4 shiftwidth=4 noexpandtab
" Turn on line numbering
set number
" Line numbers good until 99999 lines
set numberwidth=5
set hlsearch
set ignorecase
" Highlight as searching
set incsearch
set showcmd
set showmatch
set ruler
" Turn on command completion with the longest list
set wildmenu
set wildmode=list:longest
" If possible, set the window title to the filename
set title
" Keep last 3 lines on screen when scrolling
set scrolloff=3
filetype on
filetype plugin on
filetype indent on
" Flash the screen instead of beeping
set visualbell
" Always display the status line
set laststatus=2
" Don't wrap the lines
set nowrap
" Copy and paste to Windows clipboard
set clipboard=unnamed
" Move to the previous buffer with "gp"
nnoremap gp :bp<CR>
" Move to the next buffer with "gn"
nnoremap gn :bn<CR>
" List all possible buffers with "gl"
nnoremap gl :ls<CR>
" List all possible buffers with "gb" and accept a new buffer argument [1]
nnoremap gb :ls<CR>:b"

" Remap jk combination into ESC to prevent reaching across keyboard 
:inoremap jk <esc>

" For running Git diffs on Windows
if has ("win32")
	set shell=c:\windows\system32\cmd.exe
	set diffexpr=
endif	


