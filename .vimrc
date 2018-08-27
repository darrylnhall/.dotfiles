" Installed packages:
" Solarized.
" NERDTree.
" Airline.
" AirlineThemes.
" Typescript-vim.
" CtrlP.

" Pathogen.
execute pathogen#infect()
call pathogen#helptags()

" CtrlP.
set runtimepath^=~/.vim/bundle/ctrlp.vim
let g:ctrlp_working_path_mode = 'ra'
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*/node_modules/*
let g:ctrlp_show_hidden=1

" Airline.
let g:airline_theme = 'solarized'
let g:airline_solarized_bg='dark'

" Custom Settings.
" Visual Decoration.
filetype plugin indent on
syntax enable
set background=dark
colorscheme solarized
set number " Show line numbers.
set showmatch " Highlight matching [{()}].
set colorcolumn=80 " Highlight 80th column for visual reference.
set eol " Add a new line character at the end of any file.

" OS interaction.
set noswapfile " Let's not use swap files. Probably not best practice.
set clipboard=unnamed " Use os clipboard.

" Tabs.
set smartindent
set autoindent
set shiftwidth=2 " Number of spaces when shift indenting.
set tabstop=2 " Number of visual spaces per tab.
set softtabstop=2 " Number of spaces in tab when editing.
set expandtab " Tab to spaces.

" Search.
set incsearch " Search as characters are entered.
set hlsearch " Highlight matches.
set ignorecase " Ignore cases in file search.
set smartcase " Unless we type a capital letter.

" Misc
set backspace=indent,eol,start " Allow backspace to work 'normally'.

" Mappings.
inoremap jj <esc>
map <leader>n :NERDTreeToggle<CR>
map <leader>f :CtrlP<CR>
map <leader>b :CtrlPBuffer<CR>
