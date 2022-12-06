local map = vim.api.nvim_set_keymap

map('i', 'jk', '<ESC>', {noremap = true, silent = false})
map('i', 'kj', '<ESC>', {noremap = true, silent = false})
map ('v', '<C-_>', ':lua require("essentials").toggle_comment(true)<CR>', {noremap = true, silent = false})
map('n', '<C-_>', ':lua require("essentials").toggle_comment()<CR>', {noremap = true, silent = false})

