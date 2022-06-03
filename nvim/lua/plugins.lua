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
  use 'tamton-aquib/staline.nvim'

  -- ==============================================================================================
  -- language support
  -- ==============================================================================================
  use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}
  use 'neovim/nvim-lspconfig'
  use 'dense-analysis/ale'
  use 'sheerun/vim-polyglot'
  -- langs 
  use 'euclidianAce/BetterLua.vim'
  use 'jbyuki/one-small-step-for-vimkind'
  use 'bfrg/vim-cpp-modern'
  use 'lervag/vimtex'

  -- ==============================================================================================
  -- autocomplete 
  -- ==============================================================================================
  use {
    'ms-jpq/coq_nvim', branch = 'coq', requires = {
      {'ms-jpq/coq.artifacts', branch = 'artifacts'},
      {'ms-jpq/coq.thirdparty', branch = '3p'}
    }
  }
  use {'neoclide/coc.nvim', branch = 'release'}

  -- ==============================================================================================
  -- colorschemes
  -- ==============================================================================================
  use 'sainnhe/everforest'
  use 'sainnhe/sonokai'
  use 'morhetz/gruvbox'
  use 'joshdick/onedark.vim'
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
