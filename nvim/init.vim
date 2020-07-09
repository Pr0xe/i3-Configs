set number
syntax on
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
set cursorline
set cursorcolumn
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
set nohlsearch
filetype on              
map <C-n> :NERDTreeToggle<CR>
map <C-t> :tabnew<CR>
nmap <F8> :TagbarToggle<CR>
inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O
colorscheme molokai
let g:calendar_frame = 'default'
"Loading vim files
source $HOME/.config/nvim/configs/synnerd.vim
source $HOME/.config/nvim/configs/customise.vim
source $HOME/.config/nvim/configs/cpp-ef.vim
source $HOME/.config/nvim/configs/airline.vim
"####### Plugins PLUG######
call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/syntastic'
Plug 'frazrepo/vim-rainbow'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'preservim/nerdtree'
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'shougo/deoplete.nvim'
Plug 'majutsushi/tagbar'
Plug 'inside/vim-search-pulse'
Plug 'itchyny/calendar.vim'
Plug 'tpope/vim-fugitive'
call plug#end()
