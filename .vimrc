" --- PLUGINS ---
call plug#begin('~/.vim/plugged')
Plug 'catppuccin/vim', { 'as': 'catppuccin' } " High-quality Catppuccin ports
Plug 'itchyny/lightline.vim'
Plug 'machakann/vim-highlightedyank'
Plug 'sheerun/vim-polyglot'
Plug 'ap/vim-css-color'
call plug#end()

" --- UI OPTIONS ---
syntax on
set termguicolors
set background=dark
colorscheme catppuccin

set number              " Show line numbers
set relativenumber      " Easier jumping (especially for touch-typing)
set cursorline          " Highlight current line
set showmatch           " Highlight matching brackets
set laststatus=2        " Always show status bar
set noshowmode          " Hide --INSERT-- (Lightline shows it)
set mouse=a             " Enable touch/mouse scrolling in Termux

" --- ERGONOMICS & TABS ---
set expandtab
set shiftwidth=4
set tabstop=4
set smartindent
set ignorecase
set smartcase
set clipboard=unnamedplus " Link to Termux clipboard

" --- LIGHTLINE CONFIG ---
let g:lightline = {
            \ 'colorscheme': 'catppuccin',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'readonly', 'filename', 'modified' ] ]
      \ }
      \ }

" --- CUSTOM KEYBINDINGS ---
let mapleader = " "
nnoremap <leader>w :w<cr>
nnoremap <leader>q :q<cr>
