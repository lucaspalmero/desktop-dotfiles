set nocompatible              " be iMproved, required
filetype off                  " required
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline_theme = 'base16_eighties'
set laststatus=2
syntax on
set tabstop=4
set softtabstop=4
set shiftwidth=4
set noexpandtab
set t_Co=256
set scrolloff=10
set backspace=2
set number
set nobackup
set noswapfile

nnoremap j gj
nnoremap k gk
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l
set pastetoggle=<F2>
let mapleader=","
let &colorcolumn=join(range(81,999),",")
highlight ColorColumn ctermbg=235 guibg=darkgrey

autocmd FileType php set omnifunc=phpcomplete#CompletePHP

if has("gui_running")
  if has("gui_gtk2")
    set guifont=Inconsolata\ 12
  elseif has("gui_macvim")
    set guifont=Menlo\ Regular:h14
  elseif has("gui_win32")
    set guifont=Consolas:h11:cANSI
  endif
endif

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
" vim-airline - statusbar
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
" tmuxline - bling for tmux
Plugin 'edkolev/tmuxline.vim'
" devicons
Plugin 'ryanoasis/vim-devicons'
" startify
Plugin 'mhinz/vim-startify'
" fugitive
Plugin 'tpope/vim-fugitive' 
" comma object for arrays
Plugin 'austintaylor/vim-commaobject'
" php refactoring
Plugin 'adoy/vim-php-refactoring-toolbox'
" php error checking
Plugin 'joonty/vim-phpqa.git'
" bufexplorer
Plugin 'jlanzarotta/bufexplorer'
" goyo, distracting free
Plugin 'junegunn/goyo.vim'
Plugin 'junegunn/limelight.vim'
" vinegar
Plugin 'tpope/vim-vinegar.git'
" swap windows with ,ww
Plugin 'wesQ3/vim-windowswap'
" Multiple cursors
Plugin 'terryma/vim-multiple-cursors'
" Zoom a window with <c-w>o"
Plugin 'vim-scripts/ZoomWin'
" JSON better support
Plugin 'elzr/vim-json'
" Vim Surround
Plugin 'tpope/vim-surround'
" JSX n JS
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'

"" STUFF THAT NEEDS SOME BOTHERSOME INSTALATION STUFF 

" YouCompleteMe (needs compiling)
Plugin 'Valloric/YouCompleteMe'
" phpcomplete (requires phpctags)
Plugin 'shawncplus/phpcomplete.vim'


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
"

let g:airline_theme='bubblegum'
set omnifunc=syntaxcomplete#Complete

""""""""""" PHPQA
" Don't run messdetector on save (default = 1)
let g:phpqa_messdetector_autorun = 0
" Don't run codesniffer on save (default = 1)
let g:phpqa_codesniffer_autorun = 0

" cursorline en ventanas inactivas
augroup CursorLineOnlyInActiveWindow
  autocmd!
  autocmd VimEnter,WinEnter,BufWinEnter * setlocal nocursorline
  autocmd WinLeave * setlocal cursorline
augroup END

""""""""""""""""""""""" integracion goyo y limelight """"""""""""""""""""""""""""""""""
autocmd! User GoyoEnter Limelight
autocmd! User GoyoLeave Limelight!
" Color name (:help cterm-colors) or ANSI code
let g:limelight_conceal_ctermfg = 'gray'
let g:limelight_conceal_ctermfg = 240

" Color name (:help gui-colors) or RGB color
let g:limelight_conceal_guifg = 'DarkGray'
let g:limelight_conceal_guifg = '#777777'

" Default: 0.5
let g:limelight_default_coefficient = 0.7

" Number of preceding/following paragraphs to include (default: 0)
let g:limelight_paragraph_span = 3

" Beginning/end of paragraph
"   When there's no empty line between the paragraphs
"   and each paragraph starts with indentation
let g:limelight_bop = '^\s'
let g:limelight_eop = '\ze\n^\s'

" Highlighting priority (default: 10)
"   Set it to -1 not to overrule hlsearch
let g:limelight_priority = -1

""""""""""""""""""""""""""""""""""" Settings para YCM """"""""""""""""""""""""""""""""""""""""
let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_show_diagnostics_ui = 0

