
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
Plug 'mtscout6/syntastic-local-eslint.vim'
Plug 'terryma/vim-multiple-cursors'
Plug 'mattn/emmet-vim'
Plug 'sheerun/vim-polyglot'
" Plug 'pangloss/vim-javascript'
" Plug 'mxw/vim-jsx'
" Plug 'othree/javascript-libraries-syntax.vim'
Plug 'bling/vim-airline'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
call plug#end()


" ctrlp
nnoremap <C-b> :CtrlPBuffer<CR>
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'

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

" Miscellaneous Syntastic settings
let g:syntastic_error_symbol = '✗'
let g:syntastic_warning_symbol = '!'
let g:syntastic_check_on_open = 1

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
let g:jsx_ext_required = 0

"
" local functions
"
nnoremap <leader>b :call ToggleNumber()<cr>
nnoremap <leader>ss :call StripTrailingWhitespaces()<CR>

