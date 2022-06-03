vim.cmd [[
syntax on

set nocompatible
filetype off
filetype plugin on

set encoding=utf8
set mouse=a
set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
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

set colorcolumn=100
set clipboard+=unnamedplus

let mapleader = " "
let g:netrw_browse_split= 2
let g:netrw_banner = 0
let g:netrw_winsize = 25
let g:ctrlp_use_caching= 0

nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>

nnoremap <leader>u :UndotreeShow<CR>
nnoremap <leader><enter> :split term://zsh<CR>

nnoremap <leader>t :tabnew<CR>
nnoremap <leader>q :tabclose<CR>
nnoremap <Left> :tabprevious<CR>
nnoremap <Right> :tabnext<CR>

highlight ColorColumn guibg=#F5C2E7
]]

require('plugins')
require('colors')
require('keybinds')

require('configs/vim-tex-config')
require('configs/nvim-tree-config')
require('configs/autocomplete-config')
require('configs/staline-config')
