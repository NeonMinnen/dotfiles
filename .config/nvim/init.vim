:set nocompatible
:set encoding=utf-8
:set relativenumber
:set autoindent
:set tabstop=4
:set shiftwidth=4
:set smarttab
:set softtabstop=4
:set mouse=a
:set clipboard+=unnamedplus
:set termguicolors

let base16colorspace=256  " Access colors present in 256 colorspace
let g:airline_theme='base16_grayscale_dark

call plug#begin()
Plug 'https://github.com/vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'https://github.com/preservim/nerdtree'
Plug 'https://github.com/tpope/vim-surround'
Plug 'https://github.com/jiangmiao/auto-pairs'
Plug 'https://github.com/alvan/vim-closetag'
Plug 'https://github.com/mhinz/vim-startify'
Plug 'https://github.com/nvim-treesitter/nvim-treesitter'
Plug 'https://github.com/christoomey/vim-system-copy'
Plug 'https://github.com/kdheepak/monochrome.nvim'
Plug 'overcache/NeoSolarized'
Plug 'danishprakash/vim-yami'
Plug 'chriskempson/base16-vim'
Plug 'metalelf0/base16-black-metal-scheme'
call plug#end()

set background=dark
colorscheme base16-grayscale-dark
