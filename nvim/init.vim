set termguicolors
set tabstop=2     " tabs are at proper location
set expandtab     " don't use actual tab character (ctrl-v)
set shiftwidth=2  " indenting is 4 spaces
set autoindent    " turns it on
set smartindent   " does the right thing (mostly) in programs
"set guicursor=

call plug#begin('~/.config/nvim/plugged')

Plug 'rafi/awesome-vim-colorschemes'
Plug 'Lowentwickler/dotfiles'
Plug 'flazz/vim-colorschemes'
Plug 'cocopon/iceberg.vim'

call plug#end()

colorscheme iceberg

"PlugInstall
