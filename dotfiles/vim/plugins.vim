
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
Plug 'scrooloose/syntastic'
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

" typescript
Plug 'Valloric/YouCompleteMe'
" fzf fuzzy finder
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
call plug#end()


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
" Typescript autocomplete
"
if !exists("g:ycm_semantic_triggers")
  let g:ycm_semantic_triggers = {}
endif
let g:ycm_semantic_triggers['typescript'] = ['.']


"
" local functions
"
nnoremap <leader>b :call ToggleNumber()<cr>
nnoremap <leader>ss :call StripTrailingWhitespaces()<CR>

