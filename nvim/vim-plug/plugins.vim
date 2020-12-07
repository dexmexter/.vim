" Plugins List
call plug#begin('~/.config/nvim/autoload/plugged')

  " UI related
  Plug 'chriskempson/base16-vim'
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  Plug 'frazrepo/vim-rainbow'
  Plug 'osyo-manga/vim-brightest'
  Plug 'airblade/vim-gitgutter'

  " Better Visual Guide
  Plug 'Yggdroot/indentLine'

  " syntax check
  Plug 'dense-analysis/ale'

  " Autocomplete
  Plug 'ncm2/ncm2'
  Plug 'roxma/nvim-yarp'
  Plug 'ncm2/ncm2-bufword'
  Plug 'ncm2/ncm2-path'
  Plug 'ncm2/ncm2-jedi'

  " Formater
  Plug 'Chiel92/vim-autoformat'

  " tpope
  Plug 'tpope/vim-commentary'
  Plug 'tpope/vim-fugitive'
  Plug 'tpope/vim-surround'

  " Other
  Plug 'glacambre/firenvim', { 'do': { _ -> firenvim#install(0) } }
  Plug 'voldikss/vim-floaterm'
  Plug 'junegunn/fzf.vim'

call plug#end()

filetype plugin indent on

" UI
let base16colorspace=256
colorscheme base16-gruvbox-dark-hard
let g:rainbow_active = 1

" fzf
nnoremap <silent> <Leader>f :Files<CR>
nnoremap <silent> <Leader>b :Buffers<CR>

" Floaterm
nnoremap   <silent>   <F12>   :FloatermToggle<CR>
tnoremap   <silent>   <F12>   <C-\><C-n>:FloatermToggle<CR>
nnoremap <silent> <Leader>r :FloatermNew ranger<CR>

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
augroup END

" Ale
let g:ale_lint_on_enter = 0
let g:ale_lint_on_text_changed = 'never'
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
let g:ale_linters = {'python': ['flake8']}

nmap <silent> <Leader>n <Plug>(ale_next_wrap)

" Airline
let g:airline_left_sep  = ''
let g:airline_right_sep = ''
let g:airline#extensions#ale#enabled = 1
let airline#extensions#ale#error_symbol = 'E:'
let airline#extensions#ale#warning_symbol = 'W:'
