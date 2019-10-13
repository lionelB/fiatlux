
" Don't use arrow keys
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>

" add a blank line below or above and keep the cursor in place
nmap <S-Return> O<Esc>j
nmap <CR> o<Esc>k

nnoremap <F2> :set invpaste paste?<CR> 

"
" Buffer
"
nnoremap <leader>q :bp\|bd #<CR>
nnoremap <space>l :bnext<CR>
nnoremap <space>h :bprevious<CR>


"
" Movements
"
" move vertically by visual line
nnoremap j gj
nnoremap k gk
" highlight last inserted text
nnoremap gV `[v`]


" jk is escape
inoremap jk <esc>
nnoremap <leader>s :mksession<CR>
nnoremap <leader><space> :nohlsearch<CR>

"
" Indent
"
nnoremap <Tab> >>_
nnoremap <S-Tab> <<_
inoremap <S-Tab> <C-D>
vnoremap <Tab> >gv
vnoremap <S-Tab> <gv

" Better split switching (Ctrl-j, Ctrl-k, Ctrl-h, Ctrl-l)
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-H> <C-W>h
map <C-L> <C-W>l
