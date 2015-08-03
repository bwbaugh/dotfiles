set history=1000

set spell


" Indentation

" Copy indent from last line when starting new line.
set autoindent
" The # of spaces for indenting.
set shiftwidth=4
" At start of line, <Tab> inserts shiftwidth spaces, <Bs> deletes shiftwidth spaces.
set smarttab
" Tab key results in 4 spaces
set softtabstop=4
" Tabs indent only 4 spaces
set tabstop=4
" Expand tabs to spaces
set expandtab


" PLUGINS

" raichoo/haskell-vim
"
" `forall`
let g:haskell_enable_quantification = 1
" `mdo` and `rec`
let g:haskell_enable_recursivedo = 1
" `proc`
let g:haskell_enable_arrowsyntax = 1
" `pattern`
let g:haskell_enable_pattern_synonyms = 1
" type roles
let g:haskell_enable_typeroles = 1
" `static`
let g:haskell_enable_static_pointers = 1

" https://github.com/junegunn/vim-plug
" Reload .vimrc and :PlugInstall to install plugins.
call plug#begin('~/.vim/plugged')
Plug 'raichoo/haskell-vim'
Plug 'tpope/vim-vividchalk'
call plug#end()



" Theme / Syntax highlighting

" Needs to be after the plugins for it to load.
colorscheme vividchalk

syntax enable
filetype plugin indent on

" Make the normal max line lengths obvious.
set colorcolumn=72,80
