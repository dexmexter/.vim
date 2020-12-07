" UI configuration
set number
set relativenumber

set hidden
set mouse=a

set noshowmode
set noshowmatch
set nolazyredraw
set updatetime=300
set path+=**
set wildignore=*/__pycache__/*,*.pyc,**/venv/**
set splitbelow splitright

set scrolloff=1

" colorscheme
colorscheme slate
set background=dark

" True Color Support if it's avaiable in terminal
if has("termguicolors")
    set termguicolors
endif
if has("gui_running")
  set guicursor=n-v-c-sm:block,i-ci-ve:block,r-cr-o:blocks
endif

" Turn off backup
set nobackup
set noswapfile
set nowritebackup

" Search configuration
set ignorecase                    " ignore case when searching
set smartcase                     " turn on smartcase

" Tab and Indent configuration
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4

""" Custom Mappings
let mapleader = ","

" Turn off search highlight
nnoremap <silent> <Leader>/ :nohlsearch<CR>
" Edit Vim configs
nnoremap <silent> <Leader>v :edit $MYVIMRC<CR>
" Toggle spell checking
noremap <silent> <Leader>s :setlocal spell! spelllang=en_us<CR>
" Toggle paste mode
nnoremap <silent> <F2> :set paste!<CR>

" Split navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Toggle between vertical and horizontal
map <Leader>th <C-w>t<C-w>H
map <Leader>tk <C-w>t<C-w>K

" Toggle indenting when pasting
set pastetoggle=<F2>

" Eliminate trailing spaces on write
autocmd BufWritePre * :%s/\s\+$//e

" Write file with sudo, when forgot to open with sudo.
cmap w!! w !sudo tee % >/dev/null

" Automatically source .vimrc on save
augroup Vimrc
    autocmd! BufWritePost $MYVIMRC source $MYVIMRC
augroup END

command! MakeTags !ctags -R .

source $HOME/.config/nvim/vim-plug/plugins.vim

" Resources
" https://yufanlu.net/2018/09/03/neovim-python/

" How to Do 90% of What Plugins Do (With Just Vim)
" https://www.youtube.com/watch?v=XA2WjJbmmoM

" Let Vim Do the Typing
" https://www.youtube.com/watch?v=3TX3kV3TICU

" Talk on going mouseless with Vim, Tmux, and Hotkeys
" https://www.youtube.com/watch?v=E-ZbrtoSuzw
