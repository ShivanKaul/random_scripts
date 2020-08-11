" Pathogen load
filetype on
" call pathogen#infect()
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

" auto paste functionality:
" https://coderwall.com/p/if9mda/automatically-set-paste-mode-in-vim-when-pasting-in-insert-mode
function! WrapForTmux(s)
  if !exists('$TMUX')
    return a:s
  endif

  let tmux_start = "\<Esc>Ptmux;"
  let tmux_end = "\<Esc>\\"

  return tmux_start . substitute(a:s, "\<Esc>", "\<Esc>\<Esc>", 'g') . tmux_end
endfunction



function! XTermPasteBegin()
  set pastetoggle=<Esc>[201~
  set paste
  return ""
endfunction

" For vimdiff:
hi DiffAdd    ctermfg=233 ctermbg=194 guifg=#003300 guibg=#DDFFDD gui=none cterm=none
hi DiffChange ctermbg=255  guibg=#ececec gui=none   cterm=none
hi DiffText   ctermfg=233  ctermbg=189  guifg=#000033 guibg=#DDDDFF gui=none cterm=none
hi DiffDelete ctermfg=252 ctermbg=224   guifg=#DDCCCC guibg=#FFDDDD gui=none    cterm=none



if has('persistent_undo')
    set undolevels=10000
    set undoreload=50000
    set undodir=$HOME/.VIM_UNDO_FILES
    set undofile
endif
set history=2000 " change history to 1000

" relative numbering: https://vi.stackexchange.com/questions/3/how-can-i-show-relative-line-numbers
" set relativenumber





