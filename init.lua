vim.opt.tabstop=4
vim.opt.softtabstop=4
vim.opt.shiftwidth=4
vim.opt.expandtab=true
vim.opt.smartindent=true
vim.opt.number=true
vim.opt.numberwidth=1
vim.opt.signcolumn="yes"
vim.opt.incsearch=true
vim.opt.hlsearch=false
vim.opt.ignorecase=true
vim.opt.smartcase=true
vim.opt.splitbelow=true
vim.opt.splitright=true
vim.opt.hidden=true
vim.opt.wrap = false
vim.opt.scrolloff=999
vim.opt.showmode=false
vim.opt.updatetime=250
vim.opt.encoding="UTF-8"
vim.opt.mouse="a"
vim.opt.termguicolors=true
vim.opt.timeoutlen=500
vim.opt.foldtext = 'v:lua.require("essentials").simple_fold()'

--include all plugins, and packer.nvim
require("user/plugins")
require("user/staline-config")
require("user/nvim-tree-config")
require("user/which-key-config")
require("user/keybindings")
require("user/bufferline-config")
require("user/lsp")
require("user/dashboard")
vim.cmd("colorscheme moonlight")
vim.g.edge_style = ''
vim.g.edge_better_performance = 1



