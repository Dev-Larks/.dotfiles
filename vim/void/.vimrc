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

set incsearch

set nocompatible
filetype plugin on
syntax on


"----------------------------------------
" Key maps
"----------------------------------------


"----------------------------------------
" Plugins
"----------------------------------------
call plug#begin()

"source ~/.config/vim/plugins/fzf.vim
source ~/.config/vim/plugins/lightline.vim
"source ~/.config/vim/plugins/nerdtree.vim
source ~/.config/vim/plugins/nord-vim.vim
source ~/.config/vim/plugins/vimwiki.vim

call plug#end()

colorscheme nord
