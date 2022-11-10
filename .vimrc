" Use Vim features, not Vi.
set nocompatible

filetype off " Required for Vundle.

" Set the runtime path to include Vundle and initialize.
set shellslash
set rtp+=~/vimfiles/bundle/Vundle.vim
call vundle#begin('~/vimfiles/bundle')

" Let Vundle manage Vundle.
Plugin 'VundleVim/Vundle.vim'

" User plugins below.
Plugin 'kien/ctrlp.vim'
Plugin 'mileszs/ack.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'leafgarland/typescript-vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'dracula/vim', { 'name': 'dracula' }

call vundle#end()
filetype plugin indent on

set belloff=all

if has("gui_running")
  set guifont=Consolas:h12
  set guioptions-=T
  set guioptions-=t
endif

" Set <leader> key.
let mapleader = ","

" CtrlP.
set runtimepath^=~/vimfiles/bundle/ctrlp.vim
let g:ctrlp_working_path_mode = 'r'
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*/node_modules/*
let g:ctrlp_show_hidden=1

" Ack.
let g:ackprg = 'ag --vimgrep'

" Airline.
let g:airline_theme = 'dracula'

" Custom Settings.
" Visual Decoration.
set termguicolors
syntax on
colorscheme dracula
set number " Show line numbers.
set showmatch " Highlight matching [{()}].
set cursorline " Highlight current line.
set colorcolumn=81 " Highlight 81st column for visual reference.

" Interactions.
set scrolloff=8 " Start scrolling just before the cursor reaches the edge.
set eol " Add a new line character at the end of any file.

" OS interactions.
set noswapfile " Let's not use swap files. Probably not best practice.
set clipboard=unnamed " Use os clipboard.

" Text management.
set smartindent
set shiftwidth=4 " Number of spaces when shift indenting.
set tabstop=4 " Number of visual spaces per tab.
set softtabstop=4 " Number of spaces in tab when editing.
set expandtab " Tabs to spaces.
set backspace=indent,eol,start " Allow backspace to work 'normally'.

" Search.
set incsearch " Search as characters are entered.
set hlsearch " Highlight matches.
set ignorecase " Ignore cases in file search.
set smartcase " Unless we type a capital letter.

" Mappings.
map <leader>p :CtrlP<CR>
map <leader>b :CtrlPBuffer<CR>
map <leader>n :NERDTreeToggle<CR>

" Files.
autocmd BufNewFile,BufRead *.njk set filetype=html
