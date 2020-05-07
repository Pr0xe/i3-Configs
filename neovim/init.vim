set number
syntax on
set laststatus=2
set autoindent
set cindent
set hidden 
set showcmd
set showmatch
set incsearch
set background=dark
set tabpagemax=15
set showtabline=2
set nocompatible            
set mouse=a
set noshowmode
set cursorline
set cursorcolumn
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
filetype on              
map <C-n> :NERDTreeToggle<CR>
nmap <F8> :TagbarToggle<CR>
colorscheme gruvbox
let g:airline_theme='onedark'
let g:airline#extensions#tabline#enabled = 1
let g:NERDSpaceDelims = 1
let g:NERDCompactSexyComs = 1
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
"CPP Features
let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_class_decl_highlight = 1
let g:cpp_posix_standard = 1
let g:cpp_experimental_simple_template_highlight = 1
let g:cpp_concepts_highlight = 1
"####### Plugins PLUG######
call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/syntastic'
Plug 'andymass/vim-matchup'
Plug 'frazrepo/vim-rainbow'
Plug 'itchyny/lightline.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'preservim/nerdtree'
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'majutsushi/tagbar'
call plug#end()




