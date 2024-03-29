local wk = require("which-key");
package.path = package.path .. ';../?.lua'
 function Switch_projects()
  local telescope = require('telescope-config.init')
  telescope.switch_projects()
end
local mappings = {
    q = { ":q<CR>", "Quit" },
    w = { ":w<CR>", "Save" },
    --toggle nvim tree so that it doesnt take up all of the screen space
    x = { ":bdelete<CR><bar>:NvimTreeToggle<CR><bar>:NvimTreeToggle<CR><ESC><bar><c-w>h", "Delete Buffer",
        noremap = false },
    X = { ":bdelete!<CR><bar>:NvimTreeToggle<CR><bar>:NvimTreeToggle<CR><ESC><bar><c-w>h", "Force Delete Buffer",
        noremap = false },
    E = { ":e $MYVIMRC<CR>", "Edit Config" },
    n = { ":bnext<CR>", "next buffer" },
    p = { ":bprevious<CR>", "previous buffer" },
    Q = { ":q!<CR>", "q!" },
    s = { ":so %<CR>", "source current file", silent = false },
    h = { "<C-w>h", "move focus to right pane" },
    l = { "<C-w>l", "move focus to left pane" },
    j = { "<C-w>j", "move focus to lower pane" },
    k = { "<C-w>k", "move focus to upper pane" },
    e = { ":NvimTreeToggle<CR>", "NvimTree" },
    ff = { ":Telescope find_files<CR>", "find file" },
    fp = { ":Telescope project<CR>", "Projects" },
    fx = { ":execute 'lua Switch_projects()'<CR>", "Switch Projects" },
    fb = { ":NvimTreeToggle<CR>", "File Browser" },
    fd = { ":e $MYVIMRC<CR>", "Edit Config Files" },
    H = { ":Telescope oldfiles<CR>", "Recent Files" },
}
local opts = { prefix = '<leader>' }
wk.register(mappings, opts)
