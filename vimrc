
"Set the color scheme. Change this to your preference.
"Here's 100 to choose from: http://www.vim.org/scripts/script.php?script_id=625
colorscheme twilight

"Set font type and size. Depends on the resolution. Larger screens, prefer h15
set guifont=Monaco:h15

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
set tabstop=2
set shiftwidth=2

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

"------------------------"
"NERDTREE PLUGIN SETTINGS
"------------------------"
"Shortcut for NERDTreeToggle
nmap ,nt :NERDTreeToggle

"Show hidden files in NerdTree
let NERDTreeShowHidden=1

"autopen NERDTree and focus cursor in new document
autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd p

"for sparkup
filetype plugin on
