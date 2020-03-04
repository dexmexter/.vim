" VIMRC

" Appearance {{{
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
"}}}

" Settings {{{
let mapleader = ","
set nocompatible
filetype indent on                  " Load file type-specific indent files
set foldmethod=marker               " Group folds with '{{{,}}}'
set wildmenu                        " Visual autocomplete for command menu
set lazyredraw                      " Redraw only when needed
set hidden                          " Prefer hiding over unloading buffers
set path+=**                        " Find files in subfolders
let g:netrw_banner=0                " disable annoying netrw banner
"}}}

" Indenting {{{
set tabstop=4                       " Number of visual spaces per TAB
set softtabstop=4                   " Number of spaces in tab when editing
set shiftwidth=4                    " Number of spaces in tab when editing
set expandtab                       " Tabs are spaces
set smartindent
set autoindent
"}}}

" Autocommands {{{
autocmd BufWritePre * :%s/\s\+$//e  " eliminate trailing spaces

" Automatically source .vimrc on save
augroup Vimrc
    autocmd! bufwritepost .vimrc source %
augroup END

" Cursorline on active windows only
augroup cline
    au!
    au VimEnter,WinEnter,BufWinEnter * setlocal cursorline
    au WinLeave * setlocal nocursorline
augroup END

command! MakeTags !ctags -R .
"}}}

" Resources {{{
" How to Do 90% of What Plugins Do (With Just Vim)
" https://www.youtube.com/watch?v=XA2WjJbmmoM

" Let Vim Do the Typing
" https://www.youtube.com/watch?v=3TX3kV3TICU

" Talk on going mouseless with Vim, Tmux, and Hotkeys
" https://www.youtube.com/watch?v=E-ZbrtoSuzw
"}}}
