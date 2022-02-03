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
    -- using packer.nvim
    use {'akinsho/bufferline.nvim', requires = 'kyazdani42/nvim-web-devicons'}
end)

-- Lualine setup
require('lualine').setup {
  options = {
    -- ...
    theme = 'dracula-nvim'
    -- ...
  }
}

-- Pyright setup
require'lspconfig'.pyright.setup{}

-- Bufferline setup
require('bufferline').setup()

-- Sets
local set = vim.opt
set.termguicolors = true
set.showmatch = true
set.ignorecase = true
set.hlsearch = true
set.tabstop = 4
set.shiftwidth = 4
set.softtabstop = 4
set.expandtab = true
set.smarttab = true
set.autoindent = true
set.number = true
-- set.wildmode=longest,list
set.cc = '80'
set.cursorline = true
set.ttyfast = true
set.mouse = 'a'
set.showmode = false

-- Global
vim.g.mapleader = ' '

-- VIM CMD
vim.cmd[[colorscheme dracula]]

-- Keymaps
local keymap = vim.api.nvim_set_keymap
local opts = { 
    noremap = true
}
keymap('n', '<leader>e', ':NERDTreeToggle<CR>', opts)
keymap('n', '<leader>w', ':w<CR>', opts)
keymap('n', '<leader>q', ':q<CR>', opts)
keymap('n', '<leader>wq', ':wq<CR>', opts)
keymap('n', '<leader>sc', ':source $VIMRC<CR>', opts)
keymap('n', '<leader>se', ':e $VIMRC<CR>', opts)
keymap('n', '<leader>f', ':Telescope find_files<CR>', opts)
keymap('n', '<leader>g', ':Telescope live_grep<CR>', opts)
