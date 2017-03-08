" Pathogen load
filetype on
call pathogen#infect()
filetype plugin indent on
syntax on
set t_Co=256
colorscheme desert
let g:pandoc#syntax#conceal#use = 0

if exists('$TMUX')
	  let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
	  let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
  else
	  let &t_SI = "\<Esc>]50;CursorShape=1\x7"
	  let &t_EI = "\<Esc>]50;CursorShape=0\x7"
endif

:autocmd InsertEnter * set cul
:autocmd InsertLeave * set nocul

:set nu
:set mouse=a 
:set statusline+=%F
:set clipboard=unnamed
:set tabstop=4
:set shiftwidth=4
:set expandtab



