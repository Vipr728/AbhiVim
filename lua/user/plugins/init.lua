return require('lazy').setup({ 


  --misc
  'xolox/vim-misc',

   --essentials
  'tamton-aquib/essentials.nvim',
  --themes
  'rose-pine/neovim',
  'sainnhe/edge',
  'joshdick/onedark.vim',
  'xolox/vim-colorscheme-switcher',
  'shaunsingh/moonlight.nvim',
  'catppuccin/nvim',
  'folke/tokyonight.nvim',
   'rafamadriz/neon',
   'lunarvim/horizon.nvim',
   {
   'nvim-lualine/lualine.nvim',
   dependencies = { 'kyazdani42/nvim-web-devicons', opt = true }
   },


  --toggleTerm
   {"akinsho/toggleterm.nvim", tag = 'v2.2.1', config = function()
  require("toggleterm").setup()
  end},
    --treesitter

  {'nvim-treesitter/nvim-treesitter', build = ':TSupdate'},

  --autopairs
  {
	"windwp/nvim-autopairs",
    config = function() require("nvim-autopairs").setup {} end
  },
  'jiangmiao/auto-pairs',
  --indent-blankline:
  'lukas-reineke/indent-blankline.nvim',
  --
  --bufferline, statusline, telescope
  'tamton-aquib/staline.nvim',
  'BurntSushi/ripgrep',

  {
   'nvim-telescope/telescope.nvim', tag = '0.1.0',
   dependencies = { {'nvim-lua/plenary.nvim'} }
  },

  --nvim notify
  'rcarriga/nvim-notify',

  --nvim-tree
  {
    'kyazdani42/nvim-tree.lua',
    dependencies = {
        'kyazdani42/nvim-web-devicons', -- optional, for file icons
    },
    tag = 'nightly' -- optional, updated every week. (see issue #1193)
  },

  --which-key
  -- Lua
    {
        "folke/which-key.nvim",
        config = "require('user/which-key-config')"
    },

  --bufferline

  {'akinsho/bufferline.nvim', tag = "v3.1.0", dependencies = 'kyazdani42/nvim-web-devicons'},
  --devicons
  'kyazdani42/nvim-web-devicons',

  --lsp
  'neovim/nvim-lspconfig', -- Configurations for Nvim LSP

  --lsp
  'hrsh7th/cmp-nvim-lsp',
  'hrsh7th/cmp-buffer',
  'hrsh7th/cmp-path',
  'hrsh7th/cmp-cmdline',
  'hrsh7th/nvim-cmp',
  'williamboman/mason.nvim',
  'jose-elias-alvarez/null-ls.nvim',
  'hrsh7th/cmp-vsnip',
  'hrsh7th/vim-vsnip',

  --dashboard
  'glepnir/dashboard-nvim',

    'goolord/alpha-nvim',



  -- Project Management
   'nvim-telescope/telescope-project.nvim',
  'instant-markdown/vim-instant-markdown'
})

