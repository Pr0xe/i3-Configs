syntax on
filetype on              
"map leader 
let mapleader = ","
"buffer navigation"
map <leader>n :bn<cr> "buffer next
map <leader>p :bp<cr> "buffer previous
map <leader>d :bd<cr> "buffer delete
map <C-n> :NERDTreeToggle<CR>
map <C-t> :tabnew<CR>
map <F2> :mksession! ~/vim_session <cr> " Quick write session with F2
map <F3> :source ~/vim_session <cr>     " And load session with F3
nmap <F8> :TagbarToggle<CR>
nmap <leader>s :SyntasticToggleMode<CR>
inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O
colorscheme burnttoast256
"Loading vim files
source $HOME/.config/nvim/configs/setters.vim
source $HOME/.config/nvim/configs/synnerd.vim
source $HOME/.config/nvim/configs/customise.vim
source $HOME/.config/nvim/configs/cpp-ef.vim
source $HOME/.config/nvim/configs/airline.vim
source ~/.cache/calendar.vim/credentials.vim
source $HOME/.config/nvim/configs/markdown.vim
"####### Plugins PLUG######
call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/syntastic'
Plug 'frazrepo/vim-rainbow'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'preservim/nerdtree'
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'majutsushi/tagbar'
Plug 'inside/vim-search-pulse'
Plug 'itchyny/calendar.vim'
Plug 'tpope/vim-fugitive'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'tybenz/vimdeck'
Plug 'tpope/vim-markdown'
call plug#end()
