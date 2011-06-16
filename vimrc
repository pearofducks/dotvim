call pathogen#runtime_append_all_bundles()
call pathogen#helptags()
filetype plugin indent on
syntax on
if $TERM == 'xterm-256color' || has('gui_running')
  let &t_Co=256
  set background=dark
  colorscheme solarized
elseif $TERM == 'xterm'
"  set t_Co=8
  colorscheme strange
endif
set encoding=utf-8
set list
set listchars=tab:>-,extends:# ",trail:.,extends:#,nbsp:.
set backup
set showmode
set visualbell
set noerrorbells
set ttyfast
set rnu
set cmdheight=2
set laststatus=2
set statusline=\ %F%m%r%h\ %w\ \ %r%{getcwd()}%h\ \ \ %l/%L:%c
set nowrap
set nocp
set hidden
let mapleader=","
set history=100
set wildmenu
set wildmode=list:longest
set showmatch
set gdefault
set ignorecase
set smartcase
set title
set scrolloff=4
set ruler
set showcmd
set pastetoggle=^^
set autoindent
set cursorline
set softtabstop=2
set tabstop=2
set shiftwidth=2
set et|retab
set modelines=0
set backspace=indent,eol,start
set hlsearch
set incsearch
set vb
set magic
set synmaxcol=2048
"Tab mappings
nnoremap <silent> <leader>vnt :NERDTreeToggle<CR>
nnoremap <silent> <leader>vct :ConqueTerm bash<CR>
nnoremap <silent> <leader>tc :tabc<CR>
nnoremap <leader>to :tabe<SPACE>
nnoremap <silent> <leader>f :tabn<CR>
nnoremap <silent> <leader>d :tabp<CR>
nnoremap <C-M> :tabn<CR>
nnoremap <C-N> :tabp<CR>
nnoremap <silent> <leader>vu :GundoToggle<CR>
nnoremap <silent> <leader>j :join<CR>
"Window mappings
nnoremap <silent> <leader>ws :vsplit<CR>
nnoremap <silent> <leader>wl :wincmd l<CR>
nnoremap <silent> <leader>wh :wincmd h<CR>
nnoremap <silent> <leader>wj :wincmd j<CR>
nnoremap <silent> <leader>wk :wincmd k<CR>
nnoremap <silent> <leader>wo :only<CR>
nnoremap <silent> <leader>wp :vert res +20<CR>
nnoremap <silent> <leader>wm :vert res -20<CR>
set winwidth=200
set winminwidth=20
vmap <C-x> "ad
vmap <C-c> "ay
nmap <C-p> "aP
nnoremap 0 >>
nnoremap 9 <<
call togglebg#map("<F2>")
nnoremap <leader><space> :noh<CR>
inoremap kj <Esc>
nmap ; :
nmap U :redo<CR>
nmap J <PageDown>
nmap K <PageUp>
"Cursor Shape Change in terms
let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"
"Gundo Options
let g:gundo_width = 50
set backupdir=~/.vim/swap/bak
set directory=~/.vim/swap/swp
set undofile
set undodir=~/.vim/swap/udo
set undolevels=1000 "maximum number of changes that can be undone
set undoreload=10000 "maximum number lines to save for undo on a buffer reload
