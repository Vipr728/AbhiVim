local present, alpha = pcall(require, "alpha")
if not present then
   return
end

local header = {
    type = "text",
    val = {
[[  █████╗ ██████╗ ██╗  ██╗██╗██╗   ██╗██╗███╗   ███╗ ]],
[[ ██╔══██╗██╔══██╗██║  ██║██║██║   ██║██║████╗ ████║ ]],
[[ ███████║██████╔╝███████║██║██║   ██║██║██╔████╔██║ ]],
[[ ██╔══██║██╔══██╗██╔══██║██║╚██╗ ██╔╝██║██║╚██╔╝██║ ]],
[[ ██║  ██║██████╔╝██║  ██║██║ ╚████╔╝ ██║██║ ╚═╝ ██║ ]],
[[ ╚═╝  ╚═╝╚═════╝ ╚═╝  ╚═╝╚═╝  ╚═══╝  ╚═╝╚═╝     ╚═╝ ]],
    },
    opts = {
        position = "center",
        hl = "SpecialKey"
    }
}

local handle = io.popen('fdfind -d 2 . $HOME"/.local/share/nvim/site/pack/packer" | head -n -2 | wc -l | tr -d "\n" ')
local plugins = handle:read("*a")
handle:close()

local thingy = io.popen('echo "$(date +%a) $(date +%d) $(date +%b)" | tr -d "\n"')
local date = thingy:read("*a")
thingy:close()

local plugin_count = {
    type = "text",
    val = "└─   " .. plugins .. " plugins in total ─┘",
    opts = {
        position = "center",
        hl = "SpecialKey",
    }
}

local heading = {
    type = "text",
    val = "┌─   Today is " .. date .. " ─┐",
    opts = {
        position = "center",
        hl = "SpecialKey",
    }
}

local top_bar = {
    type = "text",
    val = "┌──══───══───══───══───══──┐",
    opts = {
        position = "center",
        hl = "SpecialKey",
    }
}

local bot_bar = {
    type = "text",
    val = "└──══───══───══───══───══──┘",
    opts = {
        position = "center",
        hl = "SpecialKey",
    }
}


local function button(sc, txt, keybind)
    local sc_ = sc:gsub("%s", ""):gsub("SPC", "<leader>")

    local opts = {
        position = "center",
        text = txt,
        shortcut = sc,
        cursor = 5,
        width = 24,
        align_shortcut = "right",
        hl_shortcut = "SpecialKey",
        hl = "SpecialKey",
    }
    if keybind then
        opts.keymap = {"n", sc_, keybind, {noremap = true, silent = true}}
    end

    return {
        type = "button",
        val = txt,
        on_press = function()
            local key = vim.api.nvim_replace_termcodes(sc_, true, false, true)
            vim.api.nvim_feedkeys(key, "normal", false)
        end,
        opts = opts,
    }
end

local buttons = {
    type = "group",
    val = {
      button( "│ ", " │" , ":echo ''<CR>"),
    button( "LDR h", "   Recents" , ":Telescope oldfiles<CR>"),
    button( "LDR b", "   Buffers" , ":Telescope buffers<CR>"),
    button( "LDR y", "   Explore" , ":NvimTreeToggle<CR>"),
    button( "LDR /", "   Ripgrep" , ":Telescope live_grep<CR>"),
    button( "MRK V", "   Options" , ":execute 'normal! `V'<CR>"),
    button( "MRK P", "   Plugins" , ":execute 'normal! `P'<CR>"),
    },
    opts = {
        spacing = 1,
    }
}

local section = {
    header = header,
    buttons = buttons,
    plugin_count = plugin_count,
    heading = heading,
    top_bar = top_bar,
    bot_bar = bot_bar,
}

local opts = {
    layout = {
        {type = "padding", val = 2},
        section.header,
        {type = "padding", val = 2},
        section.heading,
        section.plugin_count,
        {type = "padding", val = 3},
        -- section.top_bar,
        section.buttons,
        -- section.bot_bar,
    },
    opts = {
        margin = 5
    },
}
alpha.setup(opts)
