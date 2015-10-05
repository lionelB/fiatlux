
"
" Colors
"
" Default color scheme


" colorscheme base16-tomorrow
colorscheme molokai 

set background=dark
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
  set undofile
  set undodir=~/.vim/undo
  set undolevels=1000
endif

" set list " Show 'invisible' characters
set listchars=tab:▸\ ,trail:·,nbsp:_ " Set characters used to indicate 'invisible' characters
set showbreak=⌞
set wrap
set linebreak
set nolist

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
let xml_syntax_folding=1

" Open new split panes to right and bottom
set splitbelow
set splitright


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

"
" Wild settings
" 
set wildchar=<TAB> " Character for CLI expansion (TAB-completion).
set wildmenu
set wildmode=full " autocomplete menu like ZSH

set wildignore="" " reset
set wildignore+=*.o,*.out,*.obj,.git,*.rbc,*.rbo,*.class,.svn,*.gem " Disable output and VCS files
set wildignore+=*.zip,*.tar.gz,*.tar.bz2,*.rar,*.tar.xz " Disable archive files
set wildignore+=*/.sass-cache/* " Ignore sass cache
set wildignore+=*/.settings/* " Ignore settings folders
set wildignore+=*.pyc " Python byte code
set wildignore+=*.swp,*~,._* " Ignore temp and backup files
set wildignore+=*.png,*.jpg,*.jpeg,*.gif,*.psd,*.tiff,*.swf,*.fla " Ignore image files
set wildignore+=*.DS_Store " Ignore .DS_Store files
set wildignore+=*.ogg,*.mp3,*.aac " Ignore sound files

