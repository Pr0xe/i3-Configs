" ---------  ####### Plugins PLUG ######  ---------

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
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'
Plug 'rhysd/vim-clang-format'
Plug 'joshdick/onedark.vim'
Plug 'projekt0n/github-nvim-theme'
Plug 'flazz/vim-colorschemes'

call plug#end()

" ---------  ####### Vim files Loading ######  ---------

source $HOME/.config/nvim/configs/setters.vim
source $HOME/.config/nvim/configs/synnerd.vim
source $HOME/.config/nvim/configs/customise.vim
source $HOME/.config/nvim/configs/cpp-ef.vim
source $HOME/.config/nvim/configs/airline.vim
source $HOME/.config/nvim/configs/openurl.vim
source $HOME/.config/nvim/configs/markdown.vim
source $HOME/.config/nvim/configs/goyo.vim
source $HOME/.config/nvim/configs/onedark.vim
source $HOME/.config/nvim/configs/gitguter.vim
"----------  simple settings
syntax on
filetype on
let mapleader = "."

" ---------  ####### Colorscheme ######  ---------

let g:airline_theme = 'night_owl'
colorscheme onedark

" ---------  ####### tab navigation ######  ---------

nnoremap <C-Left> :bp<CR>
nnoremap <C-Right> :bn<CR>
nnoremap <C-Down> :bd<CR>

" ---------  ####### Mapping tools &  NNN ######  ---------

map <F2> :mksession! ~/vim_session <cr> " Quick write session with F2
map <F3> :source ~/vim_session <cr>     " And load session with F3
nmap <F8> :TagbarToggle<CR>
nmap <F7> :NERDTreeToggle<CR>
nmap <leader>s :SyntasticToggleMode<CR>

" ---------  ####### Auto close symbols ######  ---------

inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O
vnoremap <BS> d

" ---------  ####### AYTOCMD executions ######  ---------

autocmd BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
autocmd BufReadPost *.doc,*.docx,*.rtf,*.odp,*.odt silent %!pandoc "%" -tplain -o /dev/stdout
autocmd BufWritePre * :%s/\s\+$//e
autocmd Filetype c ClangFormatAutoEnable
autocmd! User GoyoEnter Limelight
autocmd! User GoyoLeave Limelight!
