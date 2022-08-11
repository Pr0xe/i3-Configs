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
Plug 'romgrk/barbar.nvim'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'yuttie/comfortable-motion.vim'
Plug 'airblade/vim-gitgutter'
call plug#end()

"----------  simple settings
syntax on
filetype on
let mapleader = "."

" ---------  ####### Colorscheme ######  ---------

if $TERM == "xterm-256color"
  set t_Co=256
endif
colorscheme onedark


" ---------  ####### Keymaps ######  ---------

"BUFFER MANAGEMENT
nnoremap <silent>    <A-n> <Cmd>ene <CR>
" Move to previous/next
nnoremap <silent>    <A-,> <Cmd>BufferPrevious<CR>
nnoremap <silent>    <A-.> <Cmd>BufferNext<CR>
" Re-order to previous/next
nnoremap <silent>    <A-<> <Cmd>BufferMovePrevious<CR>
nnoremap <silent>    <A->> <Cmd>BufferMoveNext<CR>
" Goto buffer in position...
nnoremap <silent>    <A-1> <Cmd>BufferGoto 1<CR>
nnoremap <silent>    <A-2> <Cmd>BufferGoto 2<CR>
nnoremap <silent>    <A-3> <Cmd>BufferGoto 3<CR>
nnoremap <silent>    <A-4> <Cmd>BufferGoto 4<CR>
nnoremap <silent>    <A-5> <Cmd>BufferGoto 5<CR>
nnoremap <silent>    <A-6> <Cmd>BufferGoto 6<CR>
nnoremap <silent>    <A-7> <Cmd>BufferGoto 7<CR>
nnoremap <silent>    <A-8> <Cmd>BufferGoto 8<CR>
nnoremap <silent>    <A-9> <Cmd>BufferGoto 9<CR>
nnoremap <silent>    <A-0> <Cmd>BufferLast<CR>
" Pin/unpin buffer
nnoremap <silent>    <A-p> <Cmd>BufferPin<CR>
" Close buffer
nnoremap <silent>    <A-c> <Cmd>BufferClose<CR>
" Magic buffer-picking mode
nnoremap <silent> <C-p>    <Cmd>BufferPick<CR>

map <F2> :mksession! ~/vim_session <cr> " Quick write session with F2
map <F3> :source ~/vim_session <cr>     " And load session with F3
nmap <F8> :TagbarToggle<CR>
nmap <F7> :NERDTreeToggle <CR>
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

let g:airline_theme = 'onedark'
let g:airline#extensions#whitespace#enabled = 0
" enable powerline fonts
let g:airline_powerline_fonts = 1
let g:Powerline_symbols = 'fancy'
let g:airline_left_sep = ''
let g:airline_right_sep = ''

" ---------  ####### BARBAR CONFIGS ######  ---------

" NOTE: If barbar's option dict isn't created yet, create it
let bufferline = get(g:, 'bufferline', {})

" Enable/disable animations
let bufferline.animation = v:true

" Enable/disable auto-hiding the tab bar when there is a single buffer
let bufferline.auto_hide = v:false

" Enable/disable current/total tabpages indicator (top right corner)
let bufferline.tabpages = v:true

" Enable/disable close button
let bufferline.closable = v:true

" Enables/disable clickable tabs
"  - left-click: go to buffer
"  - middle-click: delete buffer
let bufferline.clickable = v:true

" Excludes buffers from the tabline
let bufferline.exclude_ft = ['javascript']
let bufferline.exclude_name = ['package.json']

" Enable/disable icons
" if set to 'buffer_number', will show buffer number in the tabline
" if set to 'numbers', will show buffer index in the tabline
" if set to 'both', will show buffer index and icons in the tabline
" if set to 'buffer_number_with_icon', will show buffer number and icons in the tabline
let bufferline.icons = v:true

" Sets the icon's highlight group.
" If false, will use nvim-web-devicons colors
let bufferline.icon_custom_colors = v:false

" Configure icons on the bufferline.
let bufferline.icon_separator_active = '▎'
let bufferline.icon_separator_inactive = '▎'
let bufferline.icon_close_tab = ''
let bufferline.icon_close_tab_modified = '●'
let bufferline.icon_pinned = '車'

" If true, new buffers will be inserted at the start/end of the list.
" Default is to insert after current buffer.
let bufferline.insert_at_start = v:false
let bufferline.insert_at_end = v:false

" Sets the maximum padding width with which to surround each tab.
let bufferline.maximum_padding = 4

" Sets the maximum buffer name length.
let bufferline.maximum_length = 30

" If set, the letters for each buffer in buffer-pick mode will be
" assigned based on their name. Otherwise or in case all letters are
" already assigned, the behavior is to assign letters in order of
" usability (see order below)
let bufferline.semantic_letters = v:true

" New buffer letters are assigned in this order. This order is
" optimal for the qwerty keyboard layout but might need adjustement
" for other layouts.
let bufferline.letters =
  \ 'asdfjkl;ghnmxcvbziowerutyqpASDFJKLGHNMXCVBZIOWERUTYQP'

" Sets the name of unnamed buffers. By default format is "[Buffer X]"
" where X is the buffer number. But only a static string is accepted here.
let bufferline.no_name_title = v:null

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
let g:gitgutter_override_sign_column_highlight = 1
highlight SignColumn guibg=bg
highlight SignColumn ctermbg=bg
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
