vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'
    use {
      "folke/trouble.nvim",
      requires = "nvim-tree/nvim-web-devicons",
      config = function()
        require("trouble").setup {}
      end
    }
    use('mbbill/undotree')
    use('folke/neoconf.nvim')
    use { 'nvim-telescope/telescope.nvim', tag = '0.1.1',
        requires = {
            {'nvim-lua/plenary.nvim'}
        }
    }
    use 'sainnhe/sonokai'
    use 'navarasu/onedark.nvim'
    use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
    use { "catppuccin/nvim", as = "catppuccin" }
    use('ThePrimeagen/harpoon')
    use {
        'nvim-tree/nvim-tree.lua',
        requires = {
            'nvim-tree/nvim-web-devicons', -- optional
        }
    }
    use { 'debugloop/telescope-undo.nvim',
        dependencies = {
            "nvim-lua/plenary.nvim",
            "debugloop/telescope-undo.nvim",
        }
    }
    use('tpope/vim-fugitive')
    use {
        'numToStr/Comment.nvim',
        config = function()
            require('Comment').setup()
        end
    }
    use {
	"windwp/nvim-autopairs",
    config = function() require("nvim-autopairs").setup {} end
    }
    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v2.x',
        requires = {
            -- LSP Support
            {'neovim/nvim-lspconfig'},             -- Required
            {                                      -- Optional
            'williamboman/mason.nvim',
            run = function()
                pcall(vim.cmd, 'MasonUpdate')
            end,
            },
            {'williamboman/mason-lspconfig.nvim'}, -- Optional

            -- Autocompletion
            {'hrsh7th/nvim-cmp'},     -- Required
            {'hrsh7th/cmp-nvim-lsp'}, -- Required
            {'L3MON4D3/LuaSnip'},     -- Required
        }
    }
end)
