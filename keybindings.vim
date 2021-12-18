" Select All
nnoremap <C-a> ggVG

" Nvim Tree Toggle
nnoremap <C-b> :NvimTreeToggle<CR>

" move between panes to left/bottom/top/right
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

 " Keep VisualMode after indent with > or <
vmap < <gv
vmap > >gv

" Map leader
let mapleader = " "

" Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>
nnoremap <leader>fl <cmd>Telescope git_files<cr>

 " move split panes to left/bottom/top/right
nnoremap <A-h> <C-W>H
nnoremap <A-j> <C-W>J
nnoremap <A-k> <C-W>K
nnoremap <A-l> <C-W>L

" move line or visually selected block - alt+j/k
inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv

" Resize panes
noremap <silent> <C-S-Right> :vertical resize +5<CR>
noremap <silent> <C-S-Left> :vertical resize -5<CR>
noremap <silent> <C-S-Up> :resize +5<CR>
noremap <silent> <C-S-Down> :resize -5<CR>

" Delete word before underscore
nnoremap <leader>e :set iskeyword-=_<cr>diw:set iskeyword+=_<cr>i
" Escape + Save Mapping
inoremap jk <esc>
inoremap kj <esc>
inoremap jj <esc>
inoremap ii <esc>

" Tabs
" Open current directory
nmap te :tabedit
" List tab
nmap tl :Unite tab
" Close tab
nmap tc :tabclose
" Tab Next
nmap <leader><tab> :tabnext<CR>
nmap <leader><S-tab> :tabprevious<CR>
" Split window
nmap ss :split<Return><C-w>w
nmap sv :vsplit<Return><C-w>w

" Comment binding
nnoremap <C-_> :Commentary<cr>
inoremap <C-_> <Esc>:Commentary<cr>ji
vnoremap <C-_> ::Commentary<cr>

" Save with Ctrl+s
nnoremap <C-s> :w<cr>
inoremap <C-s> <Esc>:w<cr>

" Duplicate up and down
nnoremap <S-A-Down> Yp
nnoremap <S-A-Up> YP
xnoremap <S-A-Down> :co '><CR>V'[=gv
xnoremap <S-A-Up> :co '<-1<CR>V'[=gv
