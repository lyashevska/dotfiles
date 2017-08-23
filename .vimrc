set nocompatible
filetype on
filetype indent on

filetype plugin indent on    " required

"" To ignore plugin indent changes, instead use:
filetype plugin on

" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just
" :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

"" Number of lines
set nu

" Source the vimrc file after saving it
if has("autocmd")
   autocmd bufwritepost .vimrc source $MYVIMRC
   endif

" Uncomment the following to have Vim jump to the last position when                                                       
" reopening a file
if has("autocmd")
au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
    \| exe "normal! g'\"" | endif
endif

" R commands in the R output are highlighted as they are in R
" scripts
let Rout_more_colors = 1

" To enable the syntax method of folding for R files
let r_syntax_folding = 1

"" Highlight the current line
set cursorline
"hi CursorLine   cterm=NONE ctermbg=green ctermfg=white 

"" Set to autoread when a file is changed from outside
set autoread

set magic " :)

"" Show matching brackets when text indicator is over them
set showmatch

"" How many tenths of a second to blink when matching brackets
set mat=2

"" Always show the statusbar
set laststatus=2

"" Show the cursor position
set ruler

"" No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500

"" Set utf8 as standard encoding and en_US as the standard language
set encoding=utf8

"" Use Unix as the standard file type
set ffs=unix,dos,mac

set smartindent
set tabstop=4
set shiftwidth=4
set expandtab

"" Enable use of the mouse for all modes
set mouse=a

"" configuration for vim-r-plugin:
syntax on
filetype plugin on
filetype indent on

"" Change Leader and LocalLeader keys:
let maplocalleader = ","
let mapleader = ";"

"" Press the space bar to send lines and selection to R:
vmap <Space> <Plug>RDSendSelection
nmap <Space> <Plug>RDSendLine

"" Highlight the last searched pattern
set hlsearch

"" Show where the next pattern is as you type it:
set incsearch

"" By default, Vim indents code by 8 spaces. Most people prefer 4
" spaces:
set sw=4

"" Erasing previously inserted characters in insert mode
set backspace=indent,eol,start

set t_Co=256

set spell spelllang=en_gb
set splitright " Split to right by default

"" Text Wrapping

