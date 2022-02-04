-- Plugins
require('packer').startup(function()
    use 'wbthomason/packer.nvim'
    use 'preservim/NERDTree'
    use {
    'goolord/alpha-nvim',
    requires = { 'kyazdani42/nvim-web-devicons' },
    config = function ()
        require'alpha'.setup(require'alpha.themes.startify'.config)
    end
    }
    use 'neovim/nvim-lspconfig'
    use 'preservim/NERDTree'
    use 'Mofiqul/dracula.nvim'
    use {
      'nvim-lualine/lualine.nvim',
      requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    }
    use 'ryanoasis/vim-devicons'
    use 'editorconfig/editorconfig-vim'
    use 'tpope/vim-surround'
    use 'ap/vim-css-color'
    use 'tpope/vim-commentary'
    use 'tpope/vim-fugitive'
    use 'nvim-treesitter/nvim-treesitter'
    use {
      'nvim-telescope/telescope.nvim',
      requires = { {'nvim-lua/plenary.nvim'} }
    }
    use {'akinsho/bufferline.nvim', requires = 'kyazdani42/nvim-web-devicons'}
    use 'rcarriga/nvim-notify'
end)

-- Lua setup
require'lspconfig'.sumneko_lua.setup{
    settings = {
    Lua = {
      runtime = {
        version = 'LuaJIT',
        path = runtime_path,
      },
      diagnostics = {
        globals = {'vim', 'use', 'runtime_path'},
      },
      workspace = {
        library = vim.api.nvim_get_runtime_file("", true),
      },
      telemetry = {
        enable = false,
      },
    },
  },
}

-- Lualine setup
require('lualine').setup {
  options = {
    theme = 'dracula-nvim'
  }
}

-- Pyright setup
require'lspconfig'.pyright.setup{}

-- Bufferline setup
require('bufferline').setup()

vim.notify = require("notify")
