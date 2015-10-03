
"
" Colors
"
colorscheme Tomorrow-Night-Eighties
syntax enable       " enable syntax processing
set clipboard=unnamed " yank and paste with the system clipboard

" Remove delay between modes
set timeout
set timeoutlen=1000 " Wait {num} ms before timing out a mapping
set ttimeoutlen=0 " Wait {num} ms to change mode

"
" UI Config
"
set number              " show line numbers
set showcmd             " show command in bottom bar
set cursorline          " highlight current line
set hidden              " allow hidding buffer even though they contains modification 
set relativenumber
filetype indent on      " load filetype-specific indent files
set wildmenu            " visual autocomplete for command menu
set lazyredraw          " redraw only when we need to.
set showmatch           " highlight matching [{()}]
set list
set autoread
set copyindent
set pastetoggle=<F2>
set showmode
set noerrorbells
set visualbell
set title
set backspace=indent,eol,start


" 
" History
"
if &history < 1000
  set history=1000
endif


"
" Indent, tabs & spaces
"
set autoindent
set smartindent
set tabstop=2       " number of visual spaces per TAB
set softtabstop=2   " number of spaces in tab when editing
set expandtab       " tabs are spaces
set shiftwidth=2


"
" Searching
"
set incsearch           " search as characters are entered
set hlsearch            " highlight matches
set ignorecase          " Ignore case while searching
set smartcase           " except if it is an uppercase search
set gdefault            " Apply global substitutions
set magic               " Set magic o, for regexp
set linespace=3
set scrolloff=3

"
" Folding code
"
" set foldenable          " enable folding
" set foldlevelstart=10   " open most folds by default
" set foldnestmax=10      " 10 nested fold max
" space open/closes folds
" nnoremap <space> za
" set foldmet"



"
"Backup
"
set backup
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set backupskip=/tmp/*,/private/tmp/*
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set writebackup



" Status line
set laststatus=2 " Always show status line
set statusline=[%<%f] " Filename
set statusline+=%w%h%m%r " Options
set statusline+=\ %y " Type
set statusline+=%=%-14.(%l,%c%V%)\ %p%% " Right aligned file nav info
