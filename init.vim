" Plugin for NVIM
call plug#begin("~/.config/nvim/plugged")
	Plug 'junegunn/fzf', {'do': { -> fzf#install() } }
	Plug 'junegunn/fzf.vim'
	Plug 'pangloss/vim-javascript'
	Plug 'peitalin/vim-jsx-typescript'
	Plug 'leafgarland/typescript-vim'
	Plug 'dracula/vim'
	Plug 'jiangmiao/auto-pairs'
	Plug 'drewtempelmeyer/palenight.vim'
	Plug 'scrooloose/nerdtree'
	Plug 'ryanoasis/vim-devicons'
	Plug 'mattn/emmet-vim'
	Plug 'tpope/vim-commentary' 
	Plug 'sheerun/vim-polyglot',
	Plug 'preservim/nerdcommenter'
	Plug 'jparise/vim-graphql'
	Plug 'vim-airline/vim-airline'
	Plug 'vim-airline/vim-airline-themes'
	Plug 'yuezk/vim-js'
	Plug 'maxmellon/vim-jsx-pretty'
	Plug 'HerringtonDarkholme/yats.vim'
	Plug 'honza/vim-snippets'
 " Plug 'edkolev/tmuxline.vim'
	" post install (yarn install | npm install) then load plugin only for editing supported files
	Plug 'prettier/vim-prettier', {
	\ 'do': 'yarn install',
	\ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'yaml', 'html'] }
	Plug 'neoclide/coc.nvim', {'branch':'release'}
call plug#end()

" source $HOME/.config/nvim/plug-config/coc.vim
let g:coc_global_extensions = ['coc-tsserver',
			\'coc-python',
			\ 'coc-pydocstring',
			\ 'coc-json',
			\ 'coc-snippets',
			\ 'coc-html-css-support',
			\ 'coc-css',
			\ 'coc-sql',
			\ 'coc-yaml']
" Setting for NVIM
set scrolloff=8
set number
set relativenumber
set tabstop=2
set shiftwidth=2
set expandtab
set smartindent
set encoding=utf8
let g:airline_powerline_fonts = 1
set nocompatible
set hlsearch
set softtabstop=2
set shiftwidth=2
set expandtab
set nowrap
autocmd BufRead,BufNewFile *.md, *.txt setlocal wrap
set noswapfile
set mouse=a
set clipboard=unnamed,unnamedplus

" Theming
if (has("termguicolors"))
set termguicolors
endif
syntax enable
colorscheme dracula

" Configuration for Auto Pairs
let g:AutoPairsFlyMode = 1
let g:AutoPairsShortcutBackInsert = '<M-b>'

" Python provider
 let g:python3_host_prog = '/usr/bin/python3'

" Keep VisualMode after indent with > or <
vmap < <gv
vmap > >gv

" move between panes to left/bottom/top/right
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

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

noremap <silent> <C-S-Right> :vertical resize +5<CR>
noremap <silent> <C-S-Left> :vertical resize -5<CR>
noremap <silent> <C-S-Up> :resize +5<CR>
noremap <silent> <C-S-Down> :resize -5<CR>

" Key Mapping
let mapleader = " "
nnoremap <leader>pv :Vex<CR>
nnoremap <leader>pf :Files<CR>
nnoremap <C-p> :GFiles<CR>
nnoremap <leader>e :set iskeyword-=_<cr>diw:set iskeyword+=_<cr>i

" Escape + Save Mapping
inoremap jk <esc>:w<CR>
inoremap kj <esc>:w<CR>
inoremap jj <esc>:w<CR>
inoremap kk <esc>:w<CR>
inoremap ii <esc>:w<CR>

" NerdTree Config
let g:NERDTreeShowHidden = 1
let g:NERDTreeMinimalUI = 0
let g:NERDTreeIgnore = ['node_modules']
let NERDTreeStatusLine='NERDTree'
" Automaticaly close nvim if NERDTree is only thing left open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" Toggle
nnoremap <silent> <C-b> :NERDTreeToggle<CR>

" open new split panes to right and below
set splitright
set splitbelow

" Autocomand to remember last editing position
augroup vimrc-remember-cursor-position
  autocmd!
  autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif
augroup END

" turn terminal to normal mode with escape
tnoremap <Esc> <C-\><C-n>
" start terminal in insert mode
au BufEnter * if &buftype == 'terminal' | :startinsert | endif
" open terminal on ctrl+n
function! OpenTerminal()
split term://zsh
resize 10
endfunction
nnoremap <c-n> :call OpenTerminal()<CR>
let g:prettier#autoformat = 1
let g:prettier#autoformat_require_pragma = 0

" Emmet and COC configuration
let g:user_emmet_mode='i'
let g:user_emmet_leader_key=','

"" Set internal encoding of vim, not needed on neovim, since coc.nvim using some
" unicode characters in the file autoload/float.vim
set encoding=UTF-8

" TextEdit might fail if hidden is not set.
set hidden

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

" Make <CR> auto-select the first completion item and notify coc.nvim to
" format on enter, <cr> could be remapped by other vim plugin
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" Tabs
" Open current directory
nmap te :tabedit
" List tab
nmap tl :Unite tab
" Close tab
nmap tc :tabclose

" Split window
nmap ss :split<Return><C-w>w
nmap sv :vsplit<Return><C-w>w

