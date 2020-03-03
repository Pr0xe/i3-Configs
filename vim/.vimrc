set number
syntax on
set laststatus=2
set autoindent
set cindent
set hidden 
set background=dark
set tabpagemax=15
set showtabline=2
set nocompatible            
set mouse=a
set noshowmode
filetype off              
colorscheme spacegray
let g:airline_theme='onedark'

"####### Plugins PLUG######
call plug#begin('~/.vim/plugged')
Plug 'andymass/vim-matchup'
Plug 'frazrepo/vim-rainbow'
Plug 'itchyny/lightline.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
call plug#end()



