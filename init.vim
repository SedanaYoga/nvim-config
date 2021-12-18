set encoding=UTF-8
set hidden
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
syntax enable
filetype plugin indent on
set splitright
set splitbelow

source ~/.config/nvim/plugins.vim
luafile ~/.config/nvim/lua/eviline.lua
luafile ~/.config/nvim/lua/nvim-tree.config.lua
luafile ~/.config/nvim/lua/treesitter.config.lua
luafile ~/.config/nvim/lua/nvim-cmp.config.lua
luafile ~/.config/nvim/lua/nvim-lspconfig.config.lua
source ~/.config/nvim/keybindings.vim

" Emmet and COC configuration
let g:user_emmet_mode='i'
let g:user_emmet_leader_key=','

" Configuration for Auto Pairs
let g:AutoPairsFlyMode = 1
let g:AutoPairsShortcutBackInsert = '<M-b>'

" Set python3 host prog
let g:python3_host_prog = '/usr/bin/python3'

" Highlight Yanked Selection
augroup highlight_yank
  autocmd!
  autocmd TextYankPost * silent! lua require'vim.highlight'.on_yank()
augroup END

" let g:completion_enable_snippet = 'UltiSnips'

" Autocomand to remember last editing position
augroup vimrc-remember-cursor-position
  autocmd!
  autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif
augroup END

" Automatically install missing plugins on startup
autocmd VimEnter *
      \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
      \|   PlugInstall --sync | q
      \| endif

if has('termguicolors')
  set termguicolors
endif

let g:edge_style = 'aura'
let g:edge_enable_italic = 1
let g:edge_disable_italic_comment = 1
colorscheme palenight

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

"Prettier
let g:prettier#autoformat = 1
let g:prettier#autoformat_require_pragma = 0
