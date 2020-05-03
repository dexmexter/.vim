" VIMRC

""" Settings
let mapleader = ","
set nocompatible
filetype indent on                  " Load file type-specific indent files
set wildmenu                        " Visual autocomplete for command menu
set lazyredraw                      " Redraw only when needed
set hidden                          " Prefer hiding over unloading buffers
set path+=**                        " Find files in subfolders
let g:netrw_banner=0                " disable annoying netrw banner
set mouse=a                         " enable mouse
set textwidth=79
"set formatoptions=jcroql           " automatic text wrapping

""" Appearance
filetype on
syntax on                           " Syntax highlighting
colorscheme slate
set encoding=utf-8
set splitbelow splitright
set number                          " Line numbers
set relativenumber                  " Line numbers relative to current line
set showcmd                         " Show command in bottom bar
set hlsearch                        " highlight search term
set incsearch                       " search as characters are entered
set showmatch                       " show matching bracket
set fillchars+=vert:\               " remove pipes as split seperators

""" Indenting
set tabstop=4                       " Number of visual spaces per TAB
set softtabstop=4                   " Number of spaces in tab when editing
set shiftwidth=4                    " Number of spaces in tab when editing
set expandtab                       " Tabs are spaces
set smartindent
set autoindent

""" Remap splits
" navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" size
noremap <silent> <C-Left> :vertical resize +3<CR>
noremap <silent> <C-Right> :vertical resize -3<CR>
noremap <silent> <C-Up> :resize +3<CR>
noremap <silent> <C-Down> :resize -3<CR>

" toggle between vertical and horizontal
map <Leader>th <C-w>t<C-w>H
map <Leader>tk <C-w>t<C-w>K

""" Autocommands
autocmd BufWritePre * :%s/\s\+$//e  " eliminate trailing spaces

" Automatically source .vimrc on save
"augroup Vimrc
"    autocmd! bufwritepost .vimrc source %
"augroup END

" Automatically source init.vim on save
augroup InitVim
    autocmd! bufwritepost init.vim source %
augroup END

command! MakeTags !ctags -R .

""" Resources
" How to Do 90% of What Plugins Do (With Just Vim)
" https://www.youtube.com/watch?v=XA2WjJbmmoM

" Let Vim Do the Typing
" https://www.youtube.com/watch?v=3TX3kV3TICU

" Talk on going mouseless with Vim, Tmux, and Hotkeys
" https://www.youtube.com/watch?v=E-ZbrtoSuzw
