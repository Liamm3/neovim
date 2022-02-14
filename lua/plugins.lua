require('packer').startup(function()
    -- Packer
    use 'wbthomason/packer.nvim'

    -- webdev
    use {
        'kyazdani42/nvim-web-devicons',
        config = function()
            require'nvim-web-devicons'.setup {}
        end
    }

    -- Neogit
    use {
        "TimUntersberger/neogit",
        requires = "nvim-lua/plenary.nvim",
        config = function()
            require'config.neogit'
        end
    }

    -- Alpha
    use {
        'goolord/alpha-nvim',
        requires = 'kyazdani42/nvim-web-devicons',
        config = function ()
            require'config.alpha'
        end
    }

    -- WhichKey
    use {
        "folke/which-key.nvim",
        config = function()
            require'config.whichkey'
        end
    }

    -- NERDTree
    use 'preservim/NERDTree'

    -- Colorscheme
    use {
        'Mofiqul/dracula.nvim',
        config = function()
            vim.cmd [[colorscheme dracula]]
        end
    }

    -- Lualine
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'kyazdani42/nvim-web-devicons', opt = true },
        config = function()
            require'config.lualine'
        end
    }

    -- Telesecope
    use {
        'nvim-telescope/telescope.nvim',
        requires = { {'nvim-lua/plenary.nvim'} }
    }

    -- Bufferline
    use {
        'akinsho/bufferline.nvim',
        requires = 'kyazdani42/nvim-web-devicons',
        config = function()
            require('bufferline').setup()
        end
    }

    -- Auto pairs
    use {
      "windwp/nvim-autopairs",
      wants = "nvim-treesitter",
      module = { "nvim-autopairs.completion.cmp", "nvim-autopairs" },
      config = function()
        require("config.autopairs").setup()
      end,
    }

    -- LSP
    use {
        "neovim/nvim-lspconfig",
        opt = true,
        event = "BufReadPre",
        wants = { "cmp-nvim-lsp", "nvim-lsp-installer", "lsp_signature.nvim" },
        config = function()
            require("config.lsp").setup()
        end,
        requires = {
            "williamboman/nvim-lsp-installer",
            "ray-x/lsp_signature.nvim",
        },
    }

    -- Autocompletion for LSP
    use {
        "hrsh7th/nvim-cmp",
        event = "InsertEnter",
        opt = true,
        config = function()
            require("config.cmp").setup()
        end,
        wants = { "LuaSnip" },
        requires = {
            "hrsh7th/cmp-buffer",
            "hrsh7th/cmp-path",
            "hrsh7th/cmp-nvim-lua",
            "ray-x/cmp-treesitter",
            "hrsh7th/cmp-cmdline",
            "saadparwaiz1/cmp_luasnip",
            "hrsh7th/cmp-nvim-lsp",
            {
                "L3MON4D3/LuaSnip",
                wants = "friendly-snippets",
                config = function()
                    require("config.luasnip").setup()
                end,
            },
            "rafamadriz/friendly-snippets",
        },
        disable = false,
    }

    -- Misc
    use 'editorconfig/editorconfig-vim'
    use 'tpope/vim-surround'
    use 'ap/vim-css-color'
    use 'tpope/vim-commentary'
    use 'nvim-treesitter/nvim-treesitter'
    use 'rcarriga/nvim-notify'
    use 'nelsyeung/twig.vim'
end)
