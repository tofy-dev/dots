vim.cmd [[
syntax on

set nocompatible
filetype plugin indent on

set shell=zsh
set encoding=utf8
set mouse=a
set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=2
set expandtab
set smartindent
set number
set nowrap
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set splitbelow
set nofoldenable
set conceallevel=2

set colorcolumn=100
set clipboard+=unnamedplus

let g:mkdp_auto_start=0
let g:mkdp_auto_close=0

let g:netrw_browse_split=2
let g:netrw_banner=0
let g:netrw_winsize=25
let g:ctrlp_use_caching=0

let g:mkdp_markdown_css="/home/bob/Ashen/.styles/phlog.css"
let g:vimtex_view_method = 'zathura'

call system('export CLANGD_FLAGS="--query-driver=/**/*"')
]]

require('keybinds')
require('plugins')
require('colors')

require('configs/autocomplete-config')
require('configs/coderunner-config')
