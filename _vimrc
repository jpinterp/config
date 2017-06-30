syntax on
if has ("gui_running")
	set guifont=Courier_New:h9
	colors zenburn
	set lines=50 columns=100
endif
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
