call pathogen#runtime_append_all_bundles()
call pathogen#helptags()
filetype plugin indent on
syntax on
if $TERM == 'xterm-256color' || has('gui_running')
        set t_Co=256
        set background=dark
        let g:solarized_termcolors=256
        let g:solarized_termtrans=1
        colorscheme solarized
elseif $TERM == 'xterm'
        set t_Co=8
        colorscheme strange
endif
set backup
set backupdir=~/.vim/swap/bak
set directory=~/.vim/swap/swp
set undofile
set undodir=~/.vim/swap/udo
set undolevels=1000 "maximum number of changes that can be undone
set undoreload=10000 "maximum number lines to save for undo on a buffer reload
set cmdheight=2
set laststatus=2
set statusline=\ %F%m%r%h\ %w\ \ %r%{getcwd()}%h\ \ \ %l/%L:%c 
set number
set nocp
set hidden
let mapleader=","
set history=100
set wildmenu
set wildmode=list:longest
set ignorecase
set smartcase
set title
set scrolloff=4
set ruler
set showcmd
set pastetoggle=,p
set cursorline
set softtabstop=2
set tabstop=2
set shiftwidth=2
set et|retab
set backspace=indent,eol,start
set hlsearch
set incsearch
set vb
set magic
set synmaxcol=2048
"Tab mappings
noremap <silent> ,vnt :NERDTreeToggle<CR>
noremap <silent> ,tc :tabc<CR>
noremap ,to :tabe<SPACE>
noremap <silent> ,f :tabn<CR>
noremap <silent> ,d :tabp<CR>
noremap <C-M> :tabn<CR>
noremap <C-N> :tabp<CR>
noremap <silent> ,vu :GundoToggle<CR>
"Window mappings
noremap <silent> ,ws :vsplit<CR>
noremap <silent> ,wl :wincmd l<CR>
noremap <silent> ,wh :wincmd h<CR>
noremap <silent> ,wj :wincmd j<CR>
noremap <silent> ,wk :wincmd k<CR>
noremap <silent> ,wo :only<CR>
noremap <silent> ,wp :vert res +20<CR>
noremap <silent> ,wm :vert res -20<CR>
set winwidth=200
set winminwidth=20
inoremap ,, <Esc>
nmap ; :
nmap U :redo<CR>
nmap J <PageDown>
nmap K <PageUp>
"Cursor Shape Change in terms
let &t_SI = "\<Esc>]50;CursorShape=1\x7" 
let &t_EI = "\<Esc>]50;CursorShape=0\x7"
"Gundo Options
let g:gundo_width = 50
