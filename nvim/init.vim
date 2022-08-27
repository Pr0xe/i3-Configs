" ---------  ####### SETTERS ######  ---------

set number relativenumber
set autoindent
set cindent
set hidden
set showcmd
set showmatch
set incsearch
set ignorecase
set smartcase
set noerrorbells
set ruler
set noswapfile
set nobackup
set nowritebackup
set background=dark
set tabpagemax=15
set nocompatible
set mouse+=a
set cursorline
set cursorcolumn
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag(),coc#status()}
set statusline+=%*
set nohlsearch
set termguicolors
set noshowmode
set laststatus=2
set cmdheight=2
set updatetime=100
set signcolumn=yes
set undofile
set undodir =~/.config/nvim/undodir
set modifiable
set showtabline=2
set encoding=UTF-8
set vb

" ---------  ####### Plugins PLUG ######  ---------

call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdcommenter'
Plug 'preservim/nerdtree'
Plug 'scrooloose/syntastic'
Plug 'frazrepo/vim-rainbow'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'majutsushi/tagbar'
Plug 'inside/vim-search-pulse'
Plug 'tpope/vim-fugitive'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'tpope/vim-markdown'
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'
Plug 'rhysd/vim-clang-format'
Plug 'joshdick/onedark.vim'
Plug 'projekt0n/github-nvim-theme'
Plug 'flazz/vim-colorschemes'
Plug 'yuttie/comfortable-motion.vim'
Plug 'airblade/vim-gitgutter'
Plug 'vim-scripts/c.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'matsuuu/pinkmare'
Plug 'voldikss/vim-floaterm'
call plug#end()

"----------  simple settings
syntax on
filetype on
let mapleader = "."

" ---------  ####### Colorscheme ######  ---------

if $TERM == "xterm-256color"
  set t_Co=256
endif
colorscheme pinkmare
let g:airline_theme = 'google_dark'

" ---------  ####### Keymaps ######  ---------

"BUFFER MANAGEMENT
nnoremap <silent>    <A-n> <Cmd>ene <CR>
" Move to previous/next
nnoremap <silent>    <A-,> <Cmd>bp<CR>
nnoremap <silent>    <A-.> <Cmd>bn<CR>
" Goto buffer in position...
nnoremap <silent>    <A-1> <Cmd>buffer 1<CR>
nnoremap <silent>    <A-2> <Cmd>buffer 2<CR>
nnoremap <silent>    <A-3> <Cmd>buffer 3<CR>
nnoremap <silent>    <A-4> <Cmd>buffer 4<CR>
nnoremap <silent>    <A-5> <Cmd>buffer 5<CR>
nnoremap <silent>    <A-6> <Cmd>buffer 6<CR>
nnoremap <silent>    <A-7> <Cmd>buffer 7<CR>
nnoremap <silent>    <A-8> <Cmd>buffer 8<CR>
nnoremap <silent>    <A-9> <Cmd>buffer 9<CR>
" Close buffer
nnoremap <silent>    <A-c> <Cmd>bd<CR>

map <F2> :mksession! ~/vim_session <cr> " Quick write session with F2
map <F3> :source ~/vim_session <cr>     " And load session with F3
nmap <F8> :TagbarToggle<CR>
nmap <F7> :NERDTreeToggle <CR>
nnoremap <silent> <F12> :FloatermToggle<CR>
tnoremap <silent> <F12> <C-\><C-n>:FloatermToggle<CR>
nmap <leader>s :SyntasticToggleMode<CR>

" ---------  ####### FLOATERM ######  ---------

hi FloatermBorder guibg=purple guifg=black

" ---------  ####### AYTOCMD executions ######  ---------

autocmd BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
autocmd BufReadPost *.doc,*.docx,*.rtf,*.odp,*.odt silent %!pandoc "%" -tplain -o /dev/stdout
autocmd BufWritePre * :%s/\s\+$//e
autocmd Filetype c ClangFormatAutoEnable
autocmd! User GoyoEnter Limelight
autocmd! User GoyoLeave Limelight!

" ---------  ####### Fancy Configs ######  ---------

"Search Pulse
let g:vim_search_pulse_mode = 'cursor_line'
"Rainbow Plugin
let g:rainbow_active = 1

" ---------  ####### NERDCOMMENTER ######  ---------

""USAGE <MAP>cc (comment the current line)
"<MAP>cm (comment selected lines)
"<MAP>c-space (toggle comment)
"<MAP>cu (Undo the selected comments)
let mapleader="."
let g:NERDSpaceDelims = 1
let g:NERDCompactSexyComs = 1
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" ---------  ####### AIRLINE CONFIGS ######  ---------


let g:airline#extensions#whitespace#enabled = 0
" enable powerline fonts
let g:airline_powerline_fonts = 1
let g:Powerline_symbols = 'fancy'
let g:airline_left_sep = ''
let g:airline_right_sep = ''

" ---------  ####### CPP CONFIGS ######  ---------

let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_class_decl_highlight = 1
let g:cpp_posix_standard = 1
let g:cpp_experimental_simple_template_highlight = 1
let g:cpp_concepts_highlight = 1
let g:deoplete#enable_at_startup = 1

" ---------  ####### gitgutter CONFIGS ######  ---------

nmap ]h <Plug>(GitGutterNextHunk)
nmap [h <Plug>(GitGutterPrevHunk)

" Use fontawesome icons as signs
let g:gitgutter_sign_added = ''
let g:gitgutter_sign_modified = ''
let g:gitgutter_sign_removed = ''
let g:gitgutter_sign_removed_first_line = ''
let g:gitgutter_sign_modified_removed = ''

" ---------  ####### goyo CONFIGS ######  ---------

let g:goyo_height='90%'
let g:goyo_width='90%'

" ---------  ####### MARKDOWN CONFIGS ######  ---------

let g:markdown_fenced_languages = ['html', 'python', 'bash=sh']
let g:markdown_syntax_conceal = 0

" ---------  ####### ONEDARK CONFIGS ######  ---------

let g:onedark_hide_endofbuffer = 1
let g:onedark_termcolors = 256
let g:onedark_terminal_italics = 1

  " ---------  ####### OPENURL FUNCTION ######  ---------

function! OpenURLUnderCursor()
  let s:uri = expand('<cWORD>')
  let s:uri = substitute(s:uri, '?', '\\?', '')
  let s:uri = shellescape(s:uri, 1)
  if s:uri != ''
    silent exec "!xdg-open '".s:uri."'"
    :redraw!
  endif
endfunction
nnoremap gx :call OpenURLUnderCursor()<CR>
