return require('packer').startup(function()
  -- ==============================================================================================
  -- menus
  -- ==============================================================================================
  use 'liuchengxu/vim-clap'
  use {
    'kyazdani42/nvim-tree.lua',
    requires = {
      'kyazdani42/nvim-web-devicons', -- for file icons
    },
    config = function() require'nvim-tree'.setup {} end
  }
  use {
      'romgrk/barbar.nvim',
      requires = {'kyazdani42/nvim-web-devicons'}
  }

  -- ==============================================================================================
  -- language support
  -- ==============================================================================================
  use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}
  use 'godlygeek/tabular'
  use 'preservim/vim-markdown'
  use 'CRAG666/code_runner.nvim'
  use 'lervag/vimtex'
  use({ "iamcco/markdown-preview.nvim", run = "cd app && npm install", setup = function() vim.g.mkdp_filetypes = { "markdown" } end, ft = { "markdown" }, })

  -- ==============================================================================================
  -- autocomplete 
  -- ==============================================================================================
  use 'neovim/nvim-lspconfig'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-vsnip'
  use 'hrsh7th/vim-vsnip'

  -- ==============================================================================================
  -- colorschemes
  -- ==============================================================================================
  use 'sainnhe/everforest'
  use 'sainnhe/sonokai'
  use 'sainnhe/gruvbox-material'
  use 'franbach/miramare'
  use "sam4llis/nvim-tundra"
  use {'catppuccin/nvim', as = 'catppuccin'}
  use 'morhetz/gruvbox'
  use 'jaredgorski/fogbell.vim'

  -- ==============================================================================================
  -- misc. utilities
  -- ==============================================================================================
  use {
    "windwp/nvim-autopairs",
    event = "InsertEnter",
    config = function()
        require("nvim-autopairs").setup {}
    end
  }
  use 'airblade/vim-gitgutter'
  use 'mbbill/undotree'
  use { "folke/twilight.nvim",
    config = function()
      require("twilight").setup({})
    end
  }
end)
