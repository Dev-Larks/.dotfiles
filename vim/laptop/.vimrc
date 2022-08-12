" Set tab behaviour
set tabstop=4
set shiftwidth=4
set expandtab
set smartindent

" Set line numbering
set relativenumber
set nu

set incsearch

" Lightline config
set laststatus=2
set noshowmode

let g:lightline = {
      \ 'colorscheme': 'nord',
      \ }

set nocompatible
filetype plugin on
syntax on

"Set cursor to space after last word
"set ve+=onemore

hi Visual cterm=none ctermbg=0 ctermfg=11

call plug#begin()

" VimWiki
Plug 'vimwiki/vimwiki'

" Lightline
Plug 'itchyny/lightline.vim'

" Nord colourscheme
Plug 'arcticicestudio/nord-vim'

call plug#end()

colorscheme nord
