" Use Vim features, not Vi.
set nocompatible
filetype off " Required for Vundle.

" Set the runtime path to include Vundle and initialize.
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Let Vundle manage Vundle.
Plugin 'VundleVim/Vundle.vim'

" User plugins below.
Plugin 'vim-airline/vim-airline'
Plugin 'leafgarland/typescript-vim'
Plugin 'kien/ctrlp.vim'
Plugin 'morhetz/gruvbox'
Plugin 'scrooloose/nerdtree'

call vundle#end()
filetype plugin indent on

" Set <leader> key.
let mapleader = ","

" CtrlP.
set runtimepath^=~/.vim/bundle/ctrlp.vim
let g:ctrlp_working_path_mode = 'ra'
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*/node_modules/*
let g:ctrlp_show_hidden=1

" Custom Settings.
" Visual Decoration.
set termguicolors
syntax on
colorscheme gruvbox
set number " Show line numbers.
set numberwidth=5
set showmatch " Highlight matching [{()}].
set colorcolumn=81 " Highlight 81st column for visual reference.
set cursorline " Highlight current line.

" Interactions.
set scrolloff=8 " Start scrolling just before the cursor reaches the edge.
set eol " Add a new line character at the end of any file.

" OS interaction.
set noswapfile " Let's not use swap files. Probably not best practice.
set clipboard=unnamed " Use os clipboard.
let g:python_recommended_style=0 " Stop BREWed PEP8 styles overriding vimrc.

" Text management.
set smartindent
set autoindent
set shiftwidth=2 " Number of spaces when shift indenting.
set tabstop=2 " Number of visual spaces per tab.
set softtabstop=2 " Number of spaces in tab when editing.
set expandtab " Tab to spaces.
set nowrap " No line-wrapping.
set backspace=indent,eol,start " Allow backspace to work 'normally'.

" Search.
set incsearch " Search as characters are entered.
set hlsearch " Highlight matches.
set ignorecase " Ignore cases in file search.
set smartcase " Unless we type a capital letter.

" Mappings.
map <leader>f :CtrlP<CR>
map <leader>b :CtrlPBuffer<CR>
map <leader>n :NERDTreeToggle<CR>
