" configure expanding of tabs for various file types
au BufRead,BufNewFile *.py set expandtab
au BufRead,BufNewFile *.c set noexpandtab
au BufRead,BufNewFile *.h set noexpandtab
au BufRead,BufNewFile Makefile* set noexpandtab

" --------------------------------------------------------------------------------
" configure editor with tabs and nice stuff...
" --------------------------------------------------------------------------------
set expandtab           " enter spaces when tab is pressed
set textwidth=120       " break lines when line length increases
set tabstop=4           " use 4 spaces to represent tab
set softtabstop=4
set shiftwidth=4        " number of spaces to use for auto indent
set autoindent          " copy indent from current line when starting a new line
set smartindent
set smarttab
set expandtab
set number

" make backspaces more powerfull
set backspace=indent,eol,start

set ruler               " show line and column number
syntax on               " syntax highlighting


" Don't highlight search keywords
set nohls

" " Show line numbers
set number

" Show command in bottom bar
set showcmd

" Highlight the current line
set cursorline

" Load filetype specific indentation rules
" ~/.vim/indent/python.vim would load for *.py
filetype indent on
"
" " Visual autocomplete for command menu
set wildmenu
"
" " Redraw only when necessary, speeds up macros
set lazyredraw

" Shift-insert toggle paste mode
set pastetoggle=<Insert>

" Remap Ctrl-ArrowKeys to switch between split buffers
" " Remap Ctrl-ArrowKeys to switch between split windows
nnoremap <C-j> <C-W><C-J>
nnoremap <C-k> <C-W><C-K>
nnoremap <C-l> <C-W><C-L>
nnoremap <C-h> <C-W><C-H>

nmap <C-N> :set invnumber<CR>

colorscheme pablo
