set nocompatible
filetype plugin on
syntax on

set laststatus=2
set noshowmode

let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ }

call plug#begin()

" VimWiki
Plug 'vimwiki/vimwiki'
Plug 'itchyny/lightline.vim'

call plug#end()
