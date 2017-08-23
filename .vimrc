set nocompatible
filetype off
filetype indent on

"" To ignore plugin indent changes, instead use:
filetype plugin on


"" Vundle
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'tmhedberg/SimpylFold'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'scrooloose/syntastic'
Plugin 'nvie/vim-flake8'
Plugin 'tpope/vim-fugitive'
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}

" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just
" :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
" see :h vundle for more details or wiki for FAQ

call vundle#end()            " required
filetype plugin indent on    " required

let g:SimpylFold_docstring_preview=1

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
" Enable folding
set foldmethod=indent
set foldlevel=99


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

"" Tabs
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab

"" Enable use of the mouse for all modes
set mouse=a

"" Configuration for vim-r-plugin:
syntax on
filetype plugin on
filetype indent on

"" Change Leader and LocalLeader keys:
let maplocalleader = ","
let mapleader = ";"

"" Press the space bar to send lines and selection to R:
vmap <Space> <Plug>RDSendSelection
nmap <Space> <Plug>RDSendLine

"" Search and Subsitute
set hlsearch " highlight the last searched pattern
set incsearch " show where the next pattern is as you type it:
set ignorecase

"" By default, Vim indents code by 8 spaces. Most people prefer 4
" spaces:
set sw=4

"" Erasing previously inserted characters in insert mode
set backspace=indent,eol,start

set t_Co=256

set spell spelllang=en_gb

"" Splits and navigation
set splitbelow
set splitright 

"" Text Wrapping
set textwidth=79
set colorcolumn=80
set nowrap

"" Enable folding with the spacebar
nnoremap <space> za

"" Python 
"" Indentation
au BufNewFile,BufRead *.py
    \ set tabstop=4
    \ set softtabstop=4
    \ set shiftwidth=4
    \ set textwidth=79
    \ set expandtab
    \ set autoindent
    \ set fileformat=unix

"" Flagging unnecessary whitespace
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

set encoding=utf-8
let python_highlight_all=1
set clipboard=unnamed
