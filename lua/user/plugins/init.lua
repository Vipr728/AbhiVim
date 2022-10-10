return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  --themes
  use 'rose-pine/neovim'
  use 'sainnhe/edge'
  use 'joshdick/onedark.vim'
  use 'xolox/vim-colorscheme-switcher'
  use 'shaunsingh/moonlight.nvim'
  use 'catppuccin/nvim'
  use 'folke/tokyonight.nvim'
  use "rafamadriz/neon"
  use {'shaunsingh/oxocarbon.nvim', run = './install.sh'}
  --toggleTerm
  use {"akinsho/toggleterm.nvim", tag = '*', config = function()
  require("toggleterm").setup()
  end}
  --plenary
  use 'nvim-lua/plenary.nvim'

  --autopairs
  use {
	"windwp/nvim-autopairs",
    config = function() require("nvim-autopairs").setup {} end
  }
  use 'jiangmiao/auto-pairs'
  --bufferline, statusline, telescope
  use 'tamton-aquib/staline.nvim'


  use {
   'nvim-telescope/telescope.nvim', tag = '0.1.0',
   requires = { {'nvim-lua/plenary.nvim'} }
  }
  --nvim notify
  use 'rcarriga/nvim-notify'

  --nvim-tree
  use {
    'kyazdani42/nvim-tree.lua',
    requires = {
        'kyazdani42/nvim-web-devicons', -- optional, for file icons
    },
    tag = 'nightly' -- optional, updated every week. (see issue #1193)
  }

  --which-key
  -- Lua
    use {
        "folke/which-key.nvim",
        config = "require('user/which-key-config')"
    }

  --bufferline

  use {'akinsho/bufferline.nvim', tag = "v2.*", requires = 'kyazdani42/nvim-web-devicons'}
  --devicons
  use 'kyazdani42/nvim-web-devicons'

  --lsp
  use 'neovim/nvim-lspconfig' -- Configurations for Nvim LSP

  --misc
  use 'xolox/vim-misc'

    --essentials
  use 'tamton-aquib/essentials.nvim'
  --lsp
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  use 'hrsh7th/nvim-cmp'
  use 'williamboman/mason.nvim'
  use 'jose-elias-alvarez/null-ls.nvim'
  use 'hrsh7th/cmp-vsnip'
  use 'hrsh7th/vim-vsnip'

  --dashboard
  use 'glepnir/dashboard-nvim'
end)
