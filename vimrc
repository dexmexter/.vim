" VIMRC

""" Settings
let mapleader = ","
set nocompatible
set encoding=utf-8
filetype indent on                  " Load file type-specific indent files
set lazyredraw                      " Redraw only when needed
set hidden                          " Prefer hiding over unloading buffers
set path+=**                        " Find files in subfolders
let g:netrw_banner=0                " disable annoying netrw banner
set mouse=a                         " enable mouse
set autoread                        " autoload file changes
set textwidth=79
set formatoptions=tcq           " automatic text wrapping

""" Appearance
filetype on
syntax on                           " Syntax highlighting
colorscheme slate
set splitbelow splitright
set wildmenu                        " Visual autocomplete for command menu
set number                          " Line numbers
set relativenumber                  " Line numbers relative to current line
set showcmd                         " Show command in bottom bar
set incsearch                       " search as characters are entered
set showmatch                       " show matching bracket
set fillchars+=vert:\               " remove pipes as split seperators
set scrolloff=1                     " always show at least one line above/below cursor
set sidescrolloff=5                 " for horizontal

""" Indenting
set tabstop=4                       " Number of visual spaces per TAB
set softtabstop=4                   " Number of spaces in tab when editing
set shiftwidth=4                    " Number of spaces in tab when editing
set expandtab                       " Tabs are spaces
set smartindent
set autoindent

""" Custom Mappings
" Turn off search highlight
nnoremap <silent> <Leader><space> :nohlsearch<CR>

" Edit Vim configs
nnoremap <silent> <Leader>v :edit $MYVIMRC<CR>

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

" Toggle indenting when pasting
set pastetoggle=<F2>

" Toggle spell checking
noremap <F4> :setlocal spell! spelllang=en_us<CR>

" Write file with sudo, when forgot to open with sudo.
cmap w!! w !sudo tee % >/dev/null

""" Autocommands
autocmd BufWritePre * :%s/\s\+$//e  " eliminate trailing spaces

" Automatically source .vimrc on save
augroup Vimrc
    autocmd! bufwritepost .vimrc source %
augroup END

command! MakeTags !ctags -R .

""" Resources
" How to Do 90% of What Plugins Do (With Just Vim)
" https://www.youtube.com/watch?v=XA2WjJbmmoM

" Let Vim Do the Typing
" https://www.youtube.com/watch?v=3TX3kV3TICU

" Talk on going mouseless with Vim, Tmux, and Hotkeys
" https://www.youtube.com/watch?v=E-ZbrtoSuzw
