local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
package.path = package.path .. ";/home/abhinav/.config/nvim/lua/user/?.lua"
vim.g.mapleader = ' '
vim.g.maplocalleader= ' ';
vim.opt.rtp:prepend(lazypath)
vim.opt.tabstop=4 vim.opt.softtabstop=4
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
vim.cmd([[set nocompatible]])
vim.cmd([[filetype plugin on]])
--include all plugins, and packer.nvim
require("user/plugins")
require('impatient')
require("user/telescope-config")
require("user/which-key")
require("user/treesitter-config")
require("user/lualine-config")
require("user/nvim-tree-config")
require("user/keybindings")
require("user/bufferline-config")
require("user/lsp")
require("user/dashboard")
require("user/autopairs-config")
require("user/ToggleTerm-config")
require("user/Markdown-config")
vim.g.neon_style = "dark"
vim.g.neon_italic_keyword = true
vim.g.neon_italic_function = true

vim.cmd[[colorscheme tokyonight-night ]]



