-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'


  --Fuzzy finder
  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.4',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }

  -- Color scheme
  -- use({ 'rose-pine/neovim', as = 'rose-pine' })
  -- vim.cmd('colorscheme rose-pine')

  use { "catppuccin/nvim", as = "catppuccin" }

  --  Treesitter
  use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})

  --undotree
  use('mbbill/undotree')

  -- GIT
  use('tpope/vim-fugitive')

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
  use {
      "folke/which-key.nvim",
      config = function()
          vim.o.timeout = true
          vim.o.timeoutlen = 300
          require("which-key").setup {}
      end }

    -- vim surround
    use 'tpope/vim-surround'

    use {
        "nvim-neotest/neotest",
        requires = {
            "nvim-lua/plenary.nvim",
            "nvim-treesitter/nvim-treesitter",
            "antoinemadec/FixCursorHold.nvim"
        }
    }
    use 'nvim-neotest/neotest-python'

end) 
