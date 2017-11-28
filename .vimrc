if has("syntax")
  syntax on
endif

colorscheme desert

" Make Vim more useful
set nocompatible
" Enhance command-line completion
set wildmenu
" Allow cursor keys in insert mode
set esckeys
" Allow backspace in insert mode
set backspace=indent,eol,start
" Optimize for fast terminal connections
set ttyfast
" Don't add empty newlines at the end of files
set binary
set noeol

set autoread
set ambiwidth=double
set t_Co=256
set number
set title
set list
set showmatch
set ambiwidth=double
set expandtab
set tabstop=2
set shiftwidth=2
set smartindent
set autoindent
set cursorline

inoremap <silent> jj <ESC>

autocmd Filetype c setlocal ts=4 sts=4 sw=4
