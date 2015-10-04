
"
" Plugin
"
call plug#begin('~/.vim/plugged')
Plug 'editorconfig/editorconfig-vim'
Plug 'kien/ctrlp.vim'
Plug 'scrooloose/syntastic'
Plug 'terryma/vim-multiple-cursors'
Plug 'mattn/emmet-vim'
Plug 'sheerun/vim-polyglot'
Plug 'bling/vim-airline'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
call plug#end()


" ctrlp
nnoremap <C-b> :CtrlPBuffer<CR>

let g:ctrlp_map = '<c-p>'
let g:ctrlp_working_path_mode = 'ra' " current working dir
let g:ctrlp_switch_buffer = 0 " always open files in new buffers
let g:ctrlp_use_caching = 0 " Ag is faster enough
let g:ctrlp_extensions = ['buffertag', 'dir'] 
let g:ctrlp_user_command = 'ag %s -l -U --nocolor --hidden -g ""'
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'

"Syntastic
let g:syntastic_javascript_checkers = ['eslint' ]
nnoremap <silent> <down> :lnext<CR>
nnoremap <silent> <up> :lprev<CR>
let g:syntastic_check_on_open = 0
let g:syntastic_enable_signs = 1

" Airline
" let g:airline#extensions#tabline#enabled = 1
let g:airline_theme = 'powerlineish'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#whitespace#checks = ['indent', 'trailing']

if !has("gui_running")
  if !exists('g:airline_symbols')
    let g:airline_symbols = {}
  endif

" unicode symbols
"  let g:airline_left_sep = '»'
"  let g:airline_left_sep = ''
"  let g:airline_right_sep = '«'
"  let g:airline_right_sep = ''
"  let g:airline_symbols.linenr = '␊'
"  let g:airline_symbols.linenr = '␤'
"  let g:airline_symbols.linenr = 'LN'
"  let g:airline_symbols.branch = '⎇'
"  let g:airline_symbols.paste = 'ρ'
"  let g:airline_symbols.paste = 'Þ'
"  let g:airline_symbols.paste = '∥'
"  let g:airline_symbols.whitespace = 'Ξ'
    
  let g:airline_left_sep = ''
  let g:airline_left_alt_sep = ''
  let g:airline_right_sep = ''
  let g:airline_right_alt_sep = ''
  let g:airline_symbols.branch = ''
  let g:airline_symbols.readonly = ''
  let g:airline_symbols.linenr = ''

  let g:airline#extensions#tabline#left_sep = ''
  let g:airline#extensions#tabline#left_alt_sep = ''
endif

let g:jsx_ext_required = 0

