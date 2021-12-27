" SETTINGS
" navigation
set scrolloff=8
set number
set relativenumber

" theme
syntax on 
colorscheme pablo

"  handle tabs and spaces
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent

" change cursor on insert mode
let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
let &t_SR = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=2\x7\<Esc>\\"
let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"

" BINDINGS

let mapleader = " "
nnoremap <leader>pv :Vex<CR>
nnoremap <leader><CR> :so ~/.vimrc<CR>

imap x yyyyyyyyyyyyyyyyyyyy
