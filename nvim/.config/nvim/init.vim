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

" windows
set splitright
set laststatus=3
" plugins
call plug#begin('~/.vim/autoload')
" Plug 'mhinz/vim-startify'
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
Plug 'rust-lang/rust.vim'
" !!! LSPCONFIG
Plug 'startup-nvim/startup.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-file-browser.nvim'
Plug 'nvim-treesitter/nvim-treesitter'
Plug 'nvim-lua/plenary.nvim'
Plug 'numToStr/Comment.nvim'
" Plug 'nvim-lualine/lualine.nvim'
Plug 'lewis6991/gitsigns.nvim'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'norcalli/nvim-colorizer.lua'
" Plug 'morhetz/gruvbox'
" Plug 'arzg/vim-colors-xcode'
" Plug 'NLKNguyen/papercolor-theme'
" Plug 'arcticicestudio/nord-vim'
Plug 'ayu-theme/ayu-vim'

Plug 'tomlion/vim-solidity'
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

" rust format on save
let g:rustfmt_autosave = 1

" theme
set termguicolors     " enable true colors support

let ayucolor="dark"
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
nnoremap <leader><CR> :so ~/.config/nvim/init.vim<CR>
" telescope
nnoremap <leader>ff :Telescope find_files<CR>
nnoremap <leader>fg <cmd>Telescope live_grep<CR>
nnoremap <leader>fb <cmd>Telescope buffers<CR>
nnoremap <leader>fh <cmd>Telescope help_tags<CR>
nnoremap <leader>fG <cmd>Telescope git_status<CR>

lua require("lsp")
lua require("mappings")
lua require("plugin/telescope")
lua require("startup").setup()
" lua require("lualine").setup()
lua require('Comment').setup()
lua require("colorizer").setup()
lua require('plugin/gitsigns')
