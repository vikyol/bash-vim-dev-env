syntax on
set tabstop=2 shiftwidth=2 expandtab

" Tab Handling
set tabstop=2
set shiftwidth=2
set softtabstop=4
set expandtab
set autoindent

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
