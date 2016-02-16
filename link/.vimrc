set spell


" Prevent duplicate autocmds from being created if `.vimrc` is re-sourced.
augroup vimrc
    autocmd!
    autocmd Filetype gitcommit setlocal spell textwidth=71
    autocmd BufEnter *.hs compiler ghc
augroup END


" Visual settings

" Line numbers.
set number
" Use relative line numbers. Current line is still in status bar.
set relativenumber


" Scrolling

" Keep the cursor centered vertically on the screen
set scrolloff=999


" Indentation

" The # of spaces for indenting.
set shiftwidth=4
" Tab key results in 4 spaces
set softtabstop=4
" Tabs indent only 4 spaces
set tabstop=4
" Expand tabs to spaces
set expandtab


" PLUGINS

" lukerandall/haskellmode-vim
"
" The preferred HTML browser for viewing Haddock documentation.
let g:haddock_browser="/opt/google/chrome/chrome"

" scrooloose/syntastic
"
map <Leader>s :SyntasticToggleMode<CR>

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0

" https://github.com/junegunn/vim-plug
" Reload .vimrc and :PlugInstall to install plugins.
call plug#begin('~/.vim/plugged')
Plug 'Shougo/vimproc', { 'do': 'make' }
Plug 'eagletmt/ghcmod-vim'
Plug 'kien/ctrlp.vim'
Plug 'lukerandall/haskellmode-vim'
Plug 'scrooloose/syntastic'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-vividchalk'
call plug#end()



" Theme / Syntax highlighting

" Needs to be after the plugins for it to load.
colorscheme vividchalk

syntax enable
filetype plugin indent on

" Make the normal max line lengths obvious.
set colorcolumn=72,80


" Powerline
python from powerline.vim import setup as powerline_setup
python powerline_setup()
python del powerline_setup
