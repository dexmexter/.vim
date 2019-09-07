filetype on
syntax on " syntax highlighting
colorscheme slate 

set colorcolumn=80 " show ruler at column 80
set number " line numbers
set showcmd " show command in bottom bar
set cursorline " highlight current line

filetype indent on " load filetype-specific indent files
set wildmenu " visual autocomplete for command menu
set lazyredraw " redraw only when needed
set textwidth=120 
set tabstop=4 " number of visual spaces per TAB
set shiftwidth=4 " number of spaces in tab when editing
set expandtab " tabs are spaces
set smartindent
set autoindent

autocmd BufWritePre * :%s/\s\+$//e " eliminate trailing spaces

set hlsearch " highlight search term
set incsearch " search as characters are entered
set showmatch " show matching bracket


" Folding
set foldenable " enable folding
set foldlevelstart=10 " open most folds by default
set foldnestmax=10 " 10 nested fold max
set foldmethod=indent "fold based on indent level

