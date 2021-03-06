set nocompatible              " be iMproved, required
filetype off                  " required
let g:airline#extensions#tabline#enabled = 1
set laststatus=2
colorscheme pablo
syntax on
set tabstop=4
set softtabstop=4
set shiftwidth=4
set noexpandtab

" le sacamos el tab al YouCompleteMe
let g:ycm_key_list_select_completion=[]
let g:ycm_key_list_previous_completion=[]


if has("gui_running")
  if has("gui_gtk2")
    set guifont=Inconsolata\ 12
  elseif has("gui_macvim")
    set guifont=Menlo\ Regular:h14
  elseif has("gui_win32")
    set guifont=Consolas:h11:cANSI
  endif
endif

syntax on

" set the runtime path to include Vundle and initialize
set rtp+=~/vimfiles/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
" ctrl-p file finder
Plugin 'kien/ctrlp.vim'
" vim-airline - statusbar
Plugin 'bling/vim-airline'
" tmuxline - bling for tmux
Plugin 'edkolev/tmuxline.vim'
" YouCompleteMe - autocompletion
"Plugin 'Valloric/YouCompleteMe'
" NERDTree
Plugin 'scrooloose/nerdtree'
" vim-nerdtree-tabs
Plugin 'jistr/vim-nerdtree-tabs'

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
