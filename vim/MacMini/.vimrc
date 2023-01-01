
"     ____               _               _
"    |  _ \  _____   __ | |    __ _ _ __| | _____
"    | | | |/ _ \ \ / / | |   / _` | '__| |/ / __|
"    | |_| |  __/\ V /  | |___ (_| | |  |   <\__ \
"    |____/ \___| \_/___|_____\__,_|_|  |_|\_\___/
"                  |_____|


"----------------------------------------
" General Settings
" ---------------------------------------

" Set tab behaviour
set tabstop=4
set shiftwidth=4
set expandtab
set smartindent

" Set line numbering
set relativenumber
set number

" Set scroll behaviour
set scrolloff=8

"Use the system clipboard
set clipboard=unnamedplus

" Set search behaviour
set ignorecase
set smartcase
set incsearch

" General Settings
set nocompatible
filetype plugin on
syntax on

set splitbelow splitright

set spell spelllang=en_au


"----------------------------------------
" Autocmds
"----------------------------------------

" Centre screen when entering Insert mode
" autocmd InsertEnter * norm zz
"
"
"----------------------------------------
" Key maps
"----------------------------------------

let mapleader=" "
inoremap <nowait> jj <Esc>

"----------------------------------------
" Plugins
"----------------------------------------
call plug#begin()

"source ~/.config/vim/plugins/fzf.vim
source ~/.config/vim/plugins/lightline.vim
"source ~/.config/vim/plugins/nerdtree.vim
source ~/.config/vim/plugins/nord-vim.vim
source ~/.config/vim/plugins/vimwiki.vim
"source ~/.config/vim/plugins/emmet-vim.vim
"source ~/.config/vim/plugins/vim-closetag.vim

call plug#end()

colorscheme nord

