"---- VIMRC ----

set nocompatible          "don't try to be vi compatible

syntax on                   "turn on syntax highlighting
filetype plugin indent on   "for plugins to load correctly


    " TODO: Pick a leader key
    " let mapleader = ","

"set modelines=0                    "security
"set number                 "show line numbers
"set ruler                  "show file stats

"set visualbell             "blink cursor on error instead of beeping (grr)
"set encoding=utf-8         "encoding

""--Whitespace--
"set wrap
"set textwidth=79
"set formatoptions=tcqrn1
"set tabstop=2
"set shiftwidth=2
"set softtabstop=2
"set expandtab
"set noshiftround
"
""--Cursor motion--
set mouse=a           "enable mouse in vim buffer
set scrolloff=4
"set backspace=indent,eol,start
"set matchpairs+=<:> " use % to jump between pairs
"runtime! macros/matchit.vim

""--Move up/down editor lines--
"nnoremap j gj
"nnoremap k gk

"set hidden                 "allow hidden buffers
"set ttyfast                "rendering
"set laststatus=2           "status bar
"
""--Last line--
"set showmode
"set showcmd
"
"" Searching
"nnoremap / /\v
"vnoremap / /\v
"set hlsearch
"set incsearch
"set ignorecase
"set smartcase
"set showmatch
"map <leader><space> :let @/=''<cr> " clear search
".vimrc" 81L, 1895B
