
"
" Plugin
"
" Install vim-plug if necessary
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !mkdir -p ~/.vim/autoload
  silent !curl -fLo ~/.vim/autoload/plug.vim
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall
endif

call plug#begin('~/.vim/plugged')

Plug 'editorconfig/editorconfig-vim'
Plug 'kien/ctrlp.vim'
Plug 'scrooloose/syntastic'
" Plug 'mtscout6/syntastic-local-eslint.vim'
Plug 'terryma/vim-multiple-cursors'
Plug 'mattn/emmet-vim'

" Javascript
Plug 'othree/yajs.vim', {'for': 'javascript'}
Plug 'othree/javascript-libraries-syntax.vim', {'for': 'javascript'}
" Plug 'mxw/vim-jsx', {'for': 'javascript'}
Plug 'gavocanov/vim-js-indent'
Plug 'moll/vim-node'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
call plug#end()


" ctrlp
nnoremap <C-b> :CtrlPBuffer<CR>
let g:ctrlp_map = '<c-p>'
let g:ctrlp_working_path_mode = 'ra' " current working dir
let g:ctrlp_switch_buffer = 0 " always open files in new buffers
let g:ctrlp_use_caching = 0 " Ag is faster enough
let g:ctrlp_clear_cache_on_exit = 0
let g:ctrlp_lazy_update = 100
let g:ctrlp_by_filename= 1
let g:ctrlp_extensions = ['buffertag', 'dir'] 
let g:ctrlp_custom_ignore ={
  \ 'dir': '\v[\/](node_modules|bower_components|\.git|\.svn|\.hg|\.tmp)$',
  \ }

"Syntastic
let g:syntastic_javascript_checkers = ['eslint']
if executable('./node_modules/.bin/eslint')
  let b:syntastic_javascript_eslint_exec = './node_modules/.bin/eslint'
endif
nnoremap <silent> <down> :lnext<CR>
nnoremap <silent> <up> :lprev<CR>

" Miscellaneous Syntastic settings
let g:syntastic_error_symbol = '✗'
let g:syntastic_warning_symbol = '!'
let g:syntastic_check_on_open = 0
let g:syntastic_aggregate_errors = 1
let g:syntastic_check_on_wq = 1

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*


" Airline
" let g:airline#extensions#tabline#enabled = 1
let g:airline_theme = 'base16'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#whitespace#checks = ['indent', 'trailing']


" 
" Polyglot
"
" let g:jsx_ext_required = 0

"
" local functions
"
nnoremap <leader>b :call ToggleNumber()<cr>
nnoremap <leader>ss :call StripTrailingWhitespaces()<CR>

