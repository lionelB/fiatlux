
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
Plug 'terryma/vim-multiple-cursors'
Plug 'mattn/emmet-vim'
" Linting multi language
Plug 'w0rp/ale'
" Enable eslint fix
let g:ale_fixers = { 'javascript': ['eslint'] }

" Support language
Plug 'sheerun/vim-polyglot'

" bloc highlighter 
Plug 'bigfish/vim-js-context-coloring'

"JsDoc
Plug 'othree/jsdoc-syntax.vim'
Plug 'heavenshell/vim-jsdoc'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" AutoComplete
if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif

let g:deoplete#enable_at_startup = 1

"Typescript 
Plug 'peitalin/vim-jsx-typescript'

Plug 'tpope/vim-commentary'  " use gc / gcc to comment line 

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

