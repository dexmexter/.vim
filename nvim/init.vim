source $HOME/.config/nvim/vim-plug/plugins.vim

let mapleader = ","

" UI configuration
syntax on
syntax enable

set number
set relativenumber

set hidden
set mouse=a

set noshowmode
set noshowmatch
set nolazyredraw
set path+=**
set splitbelow splitright

set scrolloff=1
set sidescrolloff=5

" colorscheme
let base16colorspace=256
colorscheme base16-gruvbox-dark-hard
set background=dark
let g:rainbow_active = 1
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
" Turn off search highlight
nnoremap <silent> <Leader>/ :nohlsearch<CR>

" Edit Vim configs
nnoremap <silent> <Leader>v :edit $MYVIMRC<CR>

""" Remap splits
" navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" size (currently broken)
"noremap <silent> <C-h> :vertical resize +3<CR>
"noremap <silent> <C-l> :vertical resize -3<CR>
"noremap <silent> <C-k> :resize +3<CR>
"noremap <silent> <C-j> :resize -3<CR>

" toggle between vertical and horizontal
map <Leader>th <C-w>t<C-w>H
map <Leader>tk <C-w>t<C-w>K

" Toggle indenting when pasting
set pastetoggle=<F2>

" Toggle spell checking
noremap <F4> :setlocal spell! spelllang=en_us<CR>

" Eliminate trailing spaces on write
autocmd BufWritePre * :%s/\s\+$//e

" Write file with sudo, when forgot to open with sudo.
cmap w!! w !sudo tee % >/dev/null

" Automatically source .vimrc on save
augroup Vimrc
    autocmd! BufWritePost $MYVIMRC source $MYVIMRC
augroup END

command! MakeTags !ctags -R .

""" Plugins
" vim-autoformat
noremap <F3> :Autoformat<CR>

" NCM2
augroup NCM2
  autocmd!
  " enable ncm2 for all buffers
  autocmd BufEnter * call ncm2#enable_for_buffer()
  " :help Ncm2PopupOpen for more information
  set completeopt=noinsert,menuone,noselect
  " When the <Enter> key is pressed while the popup menu is visible, it only
  " hides the menu. Use this mapping to close the menu and also start a new line.
  inoremap <expr> <CR> (pumvisible() ? "\<c-y>\<cr>" : "\<CR>")
  " uncomment this block if you use vimtex for LaTex
  " autocmd Filetype tex call ncm2#register_source({
  "           \ 'name': 'vimtex',
  "           \ 'priority': 8,
  "           \ 'scope': ['tex'],
  "           \ 'mark': 'tex',
  "           \ 'word_pattern': '\w+',
  "           \ 'complete_pattern': g:vimtex#re#ncm2,
  "           \ 'on_complete': ['ncm2#on_complete#omni', 'vimtex#complete#omnifunc'],
  "           \ })
augroup END

" Ale
let g:ale_lint_on_enter = 0
let g:ale_lint_on_text_changed = 'never'
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
let g:ale_linters = {'python': ['flake8']}

" Airline
let g:airline_left_sep  = ''
let g:airline_right_sep = ''
let g:airline#extensions#ale#enabled = 1
let airline#extensions#ale#error_symbol = 'E:'
let airline#extensions#ale#warning_symbol = 'W:'

" Resources
" https://yufanlu.net/2018/09/03/neovim-python/

" How to Do 90% of What Plugins Do (With Just Vim)
" https://www.youtube.com/watch?v=XA2WjJbmmoM

" Let Vim Do the Typing
" https://www.youtube.com/watch?v=3TX3kV3TICU

" Talk on going mouseless with Vim, Tmux, and Hotkeys
" https://www.youtube.com/watch?v=E-ZbrtoSuzw
