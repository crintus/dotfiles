"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Must Have
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
colorscheme solarized
" syntax on " syntax highlighting on
syntax enable
let g:solarized_termtrans = 1
call togglebg#map("<F5>")
if has('gui_running')
    set background=light
else
    set background=dark
endif

let python_highlight_all=1
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Vundle 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" add all your plugins here (note older versions of Vundle
" used Bundle instead of Plugin)

Plugin 'cjrh/vim-conda'
Plugin 'vim-syntastic/syntastic'
Plugin 'nvie/vim-flake8'
Plugin 'altercation/vim-colors-solarized'
Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" General
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set ffs=unix,dos,mac
set enc=utf-8
set fenc=utf-8
set termencoding=utf-8
set nu
set clipboard=unnamed
set nosol " Leave the cursor where it is

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Files/Backups/Sessions
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set noswapfile

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Vim UI
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set backspace=2 " make backspace work normal
set mouse=a " use mouse anywhere
set so=10

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Indent / Text Formatting
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set ai " autoindent (filetype indenting instead)
set nosi " smartindent (filetype indenting instead)
set cindent " do c-style indenting
set softtabstop=4 " unify
set shiftwidth=4 " unify
set tabstop=4 " real tabs should be 4, but they will show with set list on
set copyindent " but above all -- follow the conventions laid before us
" wrap lines at 120 chars. 80 is somewhat antiquated with nowadays displays.
set textwidth=79
filetype plugin indent on " load filetype plugins and indent settings
set expandtab " no real tabs!
set nowrap " do not wrap line

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" NERDTree
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let NERDTreeShowHidden=1
let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
map ,n <plug>NERDTreeTabsToggle<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Airline
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:airline_theme='bubblegum'
let g:airline_powerline_fonts = 1

" ======================================
" Remaps
" =====================================
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

