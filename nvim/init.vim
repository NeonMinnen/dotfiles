"Nvim Config(Work In Progress)




"Set Commands 
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set exrc
set guicursor=
set nohlsearch
set hidden
set noerrorbells
set incsearch
set scrolloff=8
set t_CO=256
set clipboard=unnamedplus
set mouse=a 
set fileencoding=utf-8
set encoding=utf-8
set number
set list
syntax on

"Vim Plugins (Vim-plug)

call plug#begin()

Plug 'https://github.com/vim-airline/vim-airline'
Plug 'https://github.com/preservim/nerdtree'
Plug 'https://github.com/vimwiki/vimwiki'
Plug 'https://github.com/jiangmiao/auto-pairs'
Plug 'https://github.com/mhinz/vim-startify'
Plug 'shaunsingh/nord.nvim'
call plug#end()

"NerdTree Keybinding to Open NT

nmap <C-n> :NERDTreeToggle<CR>



"GruvBox Dark
set background=dark " "
colorscheme nord
