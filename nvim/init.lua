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
vim.opt.mouse=a
vim.opt.termguicolors=true
vim.opt.timeoutlen=500
vim.opt.foldtext = 'v:lua.require("essentials").simple_fold()'

--include all plugins, and packer.nvim
require("plugins.init")
require("staline-config.init")
require("nvim-tree-config.init")
require("which-key-config.init")
require("keybindings.init")
require("bufferline-config.init")
require("lsp.init")
vim.g.edge_style = ''
vim.g.edge_better_performance = 1

vim.cmd("colorscheme moonlight")

