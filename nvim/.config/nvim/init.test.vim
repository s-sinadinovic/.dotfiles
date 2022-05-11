" navigation
syntax on
set scrolloff=8
set number
set relativenumber

" handle tabs and spaces
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent

" plugins
call plug#begin('~/.vim/autoload')
" lsp
" !!! LSPCONfIG
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'L3MON4D3/LuaSnip'
Plug 'saadparwaiz1/cmp_luasnip'
" format/linter
Plug 'sbdchd/neoformat'
" !!! LSPCONFIG
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-treesitter/nvim-treesitter'
Plug 'nvim-lua/plenary.nvim'
Plug 'ayu-theme/ayu-vim'
call plug#end()


lua <<EOF
EOF

" Neoformat
let g:neoformat_try_node_exe = 1
" on write
autocmd BufWritePre *.js Neoformat
autocmd BufWritePre *.ts Neoformat
autocmd BufWritePre *.tsx Neoformat
autocmd BufWritePre *.json Neoformat
autocmd BufWritePre *.lua Neoformat
" autocmd BufWritePre <buffer> <cmd>EslintFixAll<CR>

" theme
set termguicolors     " enable true colors support
let ayucolor="dark"   " for dark version of theme
colorscheme ayu 

" cursor 
let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
let &t_SR = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=2\x7\<Esc>\\"
let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
hi Cursor guifg=black

" BINDINGS
" toggle diagnostics

" vim.diagnostic.config({virtual_text = !virtual_text})
let mapleader = " "
" 
nnoremap <leader>pv :Vex<CR>
nnoremap <leader><CR> :so ~/.config/nvim/init.vim<CR>
" telescope
nnoremap <leader>ff :Telescope find_files<CR>
nnoremap <leader>fg <cmd>Telescope live_grep<CR>
nnoremap <leader>fb <cmd>Telescope buffers<CR>
nnoremap <leader>fh <cmd>Telescope help_tags<CR>

" Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
" Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
" Plug 'junegunn/fzf.vim'
" Plug 'junegunn/fzf.vim'
lua require("lsp")
