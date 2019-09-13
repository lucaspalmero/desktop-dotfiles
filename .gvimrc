set guioptions-=m  "remove menu bar
set guioptions-=T  "remove toolbar
set guioptions-=r  "remove right-hand scroll bar
set guioptions-=L  "remove left-hand scroll bar

if has("gui_gtk2")
  set guifont=Inconsolata\ 12
  colorscheme pablo
elseif has("gui_macvim")
  set guifont=Menlo\ Regular:h14
  colorscheme pablo
elseif has("gui_win32")
  set guifont=Consolas:h11:cANSI
  colorscheme pablo
endif
