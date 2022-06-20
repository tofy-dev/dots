return require('packer').startup(function()
  -- ==============================================================================================
  -- menus
  -- ==============================================================================================
  use 'glepnir/dashboard-nvim'
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
  use 'lervag/vimtex'
  use 'elkowar/yuck.vim'

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
  use {'catppuccin/nvim', as = 'catppuccin'}

  -- ==============================================================================================
  -- misc. utilities
  -- ==============================================================================================
  use 'jiangmiao/auto-pairs'
  use 'airblade/vim-gitgutter'
  use 'mbbill/undotree'
  use { "folke/twilight.nvim",
    config = function()
      require("twilight").setup { }
    end
  }
end)
