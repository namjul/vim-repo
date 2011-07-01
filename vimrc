"""  Basic Configurations

"Show lines numbers
set number

"Hide MacVim toolbar by default
set go-=T

"disables compatibility with vi
set nocompatible

"Indent stuff
set smartindent
set autoindent

"Tab stuff
set tabstop=4
set shiftwidth=4

"brackets match stuff
set showmatch

"Display current cursor position in lower right corner.
set ruler

"Set incremental searching"
set incsearch

"Highlight searching
set hlsearch

"Hide mouse when typing
set mousehide

"Show command in bottom right portion of the screen
set showcmd

"Always show the status line
set laststatus=2

"Enable code folding
set foldenable

"Better line wrapping
set wrap
set textwidth=79
set formatoptions=qrn1

"remove html rendering underlines in indention
let html_no_rendering=1

"Sytax highlighting for less files
au BufRead,BufNewFile *.less setfiletype css

"Write the old file out when switching between files.
set autowrite

"Want a different map leader than \
"set mapleader = ",";

"Enable filetypes
filetype on
filetype plugin on
filetype indent on
syntax on

"Always show the status line
set laststatus=2

"Prefer a slightly higher line height
"set linespace=3

" More useful command-line completion
set wildmenu

"Auto-completion menu
set wildmode=list:longest,full
" set wildmode=longest,full

"Others
"set autochdir
set bs=2
"set colorcolumn=80
set cursorline
"set expandtab
set foldmethod=syntax
set foldminlines=3
set mouse=a
set showfulltag
set showmode
set whichwrap+=h,l,<,>
set hidden

""" Options
syn on
au FocusLost * :wa

""" Theme options
set background=dark
set t_Co=256
colors mustang

" Set font according to system
if MySys() == "mac"
  set guifont=Monaco:h15
  set shell=/bin/bash
elseif MySys() == "windows"
  set guifont=Monaco:h9
elseif MySys() == "linux"
  set guifont=Monaco:h15
  set shell=/bin/bash
endif


""" Misc mappings and configs
cmap w!! %!sudo tee > /dev/null %
imap <c-c> <Esc>
imap <F1> <Esc>
imap jj <Esc>
nmap <leader> <space>
nnoremap <silent> <C-Left> :tabprevious<CR>
nnoremap <silent> <C-Right> :tabnext<CR>
nnoremap <silent> <C-t> :tabnew<CR>
nnoremap ' `
vmap < <gv
vmap > >gv

"""NERDTREE PLUGIN SETTINGS

"Shortcut for NERDTreeToggle
nmap ,nt :NERDTreeToggle

"Show hidden files in NerdTree
let NERDTreeShowHidden=1

"autopen NERDTree and focus cursor in new document
"autocmd VimEnter * NERDTree
"autocmd VimEnter * wincmd p


