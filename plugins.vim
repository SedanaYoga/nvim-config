call plug#begin('~/.config/nvim/plugged')
  " Sensible default 
  Plug 'tpope/vim-sensible'
  " Color schemes
  Plug 'sainnhe/edge'
  " LSP Config
  Plug 'neovim/nvim-lspconfig'
  " nvim-cmp for auto-completion
  Plug 'hrsh7th/nvim-cmp'
  Plug 'hrsh7th/cmp-buffer'
  Plug 'hrsh7th/cmp-path'
  Plug 'hrsh7th/cmp-nvim-lua'
  Plug 'hrsh7th/cmp-nvim-lsp'
  Plug 'hrsh7th/cmp-cmdline'
  " For vsnip users.
  " Plug 'hrsh7th/cmp-vsnip'
  " Plug 'hrsh7th/vim-vsnip'
  " For luasnip
  Plug 'L3MON4D3/LuaSnip'
  Plug 'saadparwaiz1/cmp_luasnip'
  " For UltiSnips
  " Plug 'SirVer/ultisnips'
  " Plug 'quangnguyen30192/cmp-nvim-ultisnips'
  " Fuzzy Finder
  Plug 'nvim-lua/popup.nvim'
  Plug 'nvim-lua/plenary.nvim'
  Plug 'nvim-telescope/telescope.nvim'
  " Syntax Highlighting => Treesitter
  Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
  " File Explorer
  Plug 'kyazdani42/nvim-web-devicons' " for file icons
  Plug 'kyazdani42/nvim-tree.lua'
  " Status Line
  Plug 'glepnir/galaxyline.nvim'
  " Prettier
  Plug 'prettier/vim-prettier', { 'do': 'yarn install --frozen-lockfile --production' }
  " Important Tools
	Plug 'tpope/vim-commentary'
  Plug 'tpope/vim-surround'
	Plug 'mattn/emmet-vim'
  Plug 'jiangmiao/auto-pairs'
  Plug 'dracula/vim'
	Plug 'drewtempelmeyer/palenight.vim'
call plug#end()
