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
        requires = { { 'nvim-lua/plenary.nvim' } }
    }

    use { "xiyaowong/nvim-transparent" }

    -- Harpoon
    use { "theprimeagen/harpoon" }

    --use {"neovim/nvim-lspconfig"}
    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v3.x',
        requires = {
            --- Uncomment these if you want to manage LSP servers from neovim
            { 'williamboman/mason.nvim' },
            { 'williamboman/mason-lspconfig.nvim' },

            -- LSP Support
            { 'neovim/nvim-lspconfig' },
            -- Autocompletion
            { 'hrsh7th/nvim-cmp' },
            { 'hrsh7th/cmp-nvim-lsp' },
            { 'L3MON4D3/LuaSnip' },
        },
        settings = {
            Lua = {
                runtime = {
                    -- Tell the language server which version of Lua you're using
                    -- (most likely LuaJIT in the case of Neovim)
                    version = 'LuaJIT',
                },
                diagnostics = {
                    -- Get the language server to recognize the `vim` global
                    globals = {
                        'vim',
                        'require'
                    },
                },
            } }
    }


    use { "catppuccin/nvim", as = "catppuccin" }

    --  Treesitter
    use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })
    use({
        "nvim-treesitter/nvim-treesitter-textobjects",
        after = "nvim-treesitter",
        requires = "nvim-treesitter/nvim-treesitter",
    })

    --undotree
    use('mbbill/undotree')

    -- GIT
    use('tpope/vim-fugitive')

    -- COC
    -- use {'neoclide/coc.nvim', branch = 'release'}

    -- Nvimtree
    use {
        'nvim-tree/nvim-tree.lua',
        requires = {
            'nvim-tree/nvim-web-devicons', -- optional
        },
    }

    --  Bufferline
    use { 'akinsho/bufferline.nvim', tag = "v3.*", requires = 'nvim-tree/nvim-web-devicons' }

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
    use { "rcarriga/nvim-dap-ui", requires = { "mfussenegger/nvim-dap" } }

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
    use 'vim-scripts/AutoComplPop'
end)
