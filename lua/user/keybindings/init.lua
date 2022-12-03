local map = vim.api.nvim_set_keymap
local kmap = vim.keymap.set

map('i', 'jk', '<ESC>', {noremap = true, silent = false})
map('i', 'kj', '<ESC>', {noremap = true, silent = false})
map ('v', '<C-_>', ':lua require("essentials").toggle_comment(true)<CR>', {noremap = true, silent = false})
map('n', '<C-_>', ':lua require("essentials").toggle_comment()<CR>', {noremap = true, silent = false})

kmap('i','<F5>', function() require("knap").process_once() end)
kmap('v','<F5>', function() require("knap").process_once() end)
kmap('n','<F5>', function() require("knap").process_once() end)

-- F6 closes the viewer application, and allows settings to be reset
kmap('i','<F6>', function() require("knap").close_viewer() end)
kmap('v','<F6>', function() require("knap").close_viewer() end)
kmap('n','<F6>', function() require("knap").close_viewer() end)

-- F7 toggles the auto-processing on and off
kmap('i','<F7>', function() require("knap").toggle_autopreviewing() end)
kmap('v','<F7>', function() require("knap").toggle_autopreviewing() end)
kmap('n','<F7>', function() require("knap").toggle_autopreviewing() end)

-- F8 invokes a SyncTeX forward search, or similar, where appropriate
kmap('i','<F9>', function() require("knap").forward_jump() end)
kmap('v','<F9>', function() require("knap").forward_jump() end)
kmap('n','<F9>', function() require("knap").forward_jump() end)
