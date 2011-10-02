call pathogen#runtime_append_all_bundles()
call pathogen#helptags()
filetype plugin indent on
syntax on
if $TERM == 'xterm-256color' || has('gui_running') || $TERM == 'screen-256color'
  let t_Co=256
  set background=dark
  colorscheme solarized
elseif $TERM == 'xterm'
  let t_Co=8
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
set pastetoggle=##
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

"Tab mappings
nnoremap <silent> <leader>vnt :NERDTreeToggle<CR>
nnoremap <silent> <leader>tc :tabc<CR>
nnoremap <leader>to :tabe<SPACE>
nnoremap <silent> <leader>f :tabn<CR>
nnoremap <silent> <leader>d :tabp<CR>
nnoremap <silent> <leader>vu :GundoToggle<CR>

"Window mappings
set winwidth=200
set winminwidth=20
nnoremap > >>
nnoremap < <<
call togglebg#map("<F2>")
nnoremap <leader><space> :noh<CR>
nmap ; :
nmap U :redo<CR>
nmap J <PageDown>
nmap K <PageUp>

"Arpeggio is friggin amazing
call arpeggio#load()
Arpeggioinoremap jk <ESC>
Arpeggiovnoremap 1x "ad
Arpeggiovnoremap 1c "ay
Arpeggionnoremap 1p "aP
Arpeggionnoremap qn :q!<CR>
Arpeggionnoremap qy :wq<CR>
Arpeggionnoremap jl :join<CR>

"Window related bindings
Arpeggionnoremap wv :vsplit<CR>
Arpeggionnoremap wl :wincmd l<CR>
Arpeggionnoremap wh :wincmd h<CR>
Arpeggionnoremap wj :wincmd j<CR>
Arpeggionnoremap wk :wincmd k<CR>
Arpeggionnoremap wo :only<CR>
Arpeggionnoremap wp :vert res +20<CR>
Arpeggionnoremap wm :vert res -20<CR>
Arpeggionnoremap vb <C-v>
Arpeggionnoremap ef :CtrlP<CR>
Arpeggionnoremap er :CtrlPMRUFiles<CR>
Arpeggionnoremap eg :CtrlPBuffer<CR>
Arpeggionnoremap nt :NERDTreeToggle<CR>

"Legacy bindings, in case arpeggio goes bonkers
"inoremap kj <Esc>
set viminfo='10,\"100,:20,%,n~/.viminfo
if has("autocmd")
  function! ResCur()
    if line("'\"") <= line("$")
      normal! g`"
      return 1
    endif
  endfunction

  augroup resCur
    autocmd!
    autocmd BufWinEnter * call ResCur()
  augroup END
endif

let g:ctrlp_persistent_input = 0
let g:ctrlp_working_path_mode = 0
let g:ctrlp_prompt_mappings = {
    \ 'PrtSelectMove("j")':         ['J'],
    \ 'PrtSelectMove("k")':         ['K'],
    \ 'AcceptSelection("h")':       ['H'],
    \ 'AcceptSelection("t")':       ['T'],
    \ 'AcceptSelection("v")':       ['V'],
    \ 'ToggleFocus()':              ['<tab>'],
    \ 'ToggleRegex()':              ['<c-r>'],
    \ 'ToggleByFname()':            ['<c-d>'],
    \ }
let g:SuperTabDefaultCompletionType = "<C-X><C-O>"
