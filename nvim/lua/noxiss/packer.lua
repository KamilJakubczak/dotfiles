-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'


  --Fuzzy finder
  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.1',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }

  -- Color scheme
  use({ 'rose-pine/neovim', as = 'rose-pine' })
  vim.cmd('colorscheme rose-pine')

  --  Treesitter
  use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})


  --undotree
  use('mbbill/undotree')

  -- GIT
  use('tpope/vim-fugitive')
 
  -- LSP Autocompletion
  -- use {
  -- 	  'VonHeikemen/lsp-zero.nvim',
  -- 	  branch = 'v1.x',
  -- 	  requires = {
  -- 		  -- LSP Support
  -- 		  {'neovim/nvim-lspconfig'},             -- Required
  -- 		  {'williamboman/mason.nvim'},           -- Optional
  -- 		  {'williamboman/mason-lspconfig.nvim'}, -- Optional
  --
  -- 		  -- Autocompletion
  -- 		  {'hrsh7th/nvim-cmp'},         -- Required
  -- 		  {'hrsh7th/cmp-nvim-lsp'},     -- Required
  -- 		  {'hrsh7th/cmp-buffer'},       -- Optional
  -- 		  {'hrsh7th/cmp-path'},         -- Optional
  -- 		  {'saadparwaiz1/cmp_luasnip'}, -- Optional
  -- 		  {'hrsh7th/cmp-nvim-lua'},     -- Optional
  --
  -- 		  -- Snippets
  -- 		  {'L3MON4D3/LuaSnip'},             -- Required
  -- 		  {'rafamadriz/friendly-snippets'}, -- Optional
  -- 	  }
  -- }

  -- COC
  use {'neoclide/coc.nvim', branch = 'release'}
  -- Nvimtree
  use {
      'nvim-tree/nvim-tree.lua',
      requires = {
          'nvim-tree/nvim-web-devicons', -- optional
      },
  }

  --  Bufferline
  use {'akinsho/bufferline.nvim', tag = "v3.*", requires = 'nvim-tree/nvim-web-devicons'}

  -- Comments
  use "terrortylor/nvim-comment"

  -- Auto closing tags
  use "jiangmiao/auto-pairs"

  -- Vimviki
  use {
      'vimwiki/vimwiki',
      config = function()
          vim.g.vimwiki_list = {
              {
                  path = '~/vimwiki/',
                  syntax = 'markdown',
                  ext = '.md',
              }
          }
      end
  }

  -- debuigging
  use 'mfussenegger/nvim-dap'
  use 'mfussenegger/nvim-dap-python'
  use { "rcarriga/nvim-dap-ui", requires = {"mfussenegger/nvim-dap"} }

  -- whichkey
  -- Lua
  use {
      "folke/which-key.nvim",
      config = function()
          vim.o.timeout = true
          vim.o.timeoutlen = 300
          require("which-key").setup {}
      end }

end) 
