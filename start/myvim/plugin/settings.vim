
"██╗░░░░░██╗░░░██╗░██████╗████████╗░██████╗
"██║░░░░░╚██╗░██╔╝██╔════╝╚══██╔══╝██╔════╝
"██║░░░░░░╚████╔╝░╚█████╗░░░░██║░░░╚█████╗░
"██║░░░░░░░╚██╔╝░░░╚═══██╗░░░██║░░░░╚═══██╗
"███████╗░░░██║░░░██████╔╝░░░██║░░░██████╔╝
"╚══════╝░░░╚═╝░░░╚═════╝░░░░╚═╝░░░╚═════╝░
"---- VIMRC SETTINGS -----

set nocompatible		    "don't try to be vi compatible

syntax on			        "enable syntax highlighting; highlights files in colour		
filetype plugin indent on	"to load plugins correctly; vim detects filetype, file-specific indent on

set number			        "show line numbers
set ruler			        "show file stats
set encoding=utf-8		    "sets characters with which vim can work with
set undolevels=200		    "no. undo levels
colorscheme slate           "vim colorscheme

"--General--
set undodir=~/.vim/undo//	    "undo files
set backupdir=~/.vim/backups//	"backups
set directory=~/.vim/swap//	    "swapfiles
set noswapfile			        "avoid creating swapfile

set hidden                 	"allow hidden buffers
set ttyfast                	"rendering
set laststatus=2          	"status bar

set clipboard=unnamedplus   "allow copy paste across different instances of vim
set clipboard+=unnamed

"--Whitespace--
set lbr                 "changes break to workd instaed of character, abbr of linebreak
set textwidth=0		"max width of inserted txt, long line broken to get width, 0 to disable, was 79
set tabstop=4			"max no. whitespace columns \t can take up 
set shiftwidth=4		"default no. auto-indent spaces
set softtabstop=4		"no. spaces per \t 
""set autoindent		"auto-indent new lines
set expandtab		"use appropriate no. spaces to insert \t
set noshiftround		"round indent to multiple of 'shiftwidth'

"--Cursor motion--
set mouse=a			            "enable mouse in vim buffer
set scrolloff=4			        "centered scrolling focus
set backspace=indent,eol,start	"backspace behaviour
set matchpairs+=<:>		        "use % to jump between character pairs
				
"--Navigate editor lines--
nnoremap j gj			"down a line
nnoremap k gk			"up a line

"--Last line--
set showmode			"display mode in last line of screen
set showcmd			    "show (partial) command in last line of screen

"--Searching--
set hlsearch			"highlight search results
set incsearch			"searches for strings while typing search term
set ignorecase			"no case sensitivity when searching
set smartcase			"searches ignore case if all lower case
set showmatch			"jumps to matching character visible within screen

	"--Dormant--
	""map <leader><space> :let @/=''<cr> " clear search
	""set formatoptions=tcqrn1	"whitespace formatting ??
	""set visualbell		"blink cursor on error instead of beeping (grr) ??
	"runtime! macros/matchit.vim


