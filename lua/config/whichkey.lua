local wk = require("which-key")
local conf = {
    window = {
        border = "single",
        position = "bottom",
    }
}

local opts = {
    mode = "n",
    prefix = "<leader>",
    buffer = nil,
    silent = true,
    noremap = true,
    nowait = true,
}

local mappings = {
    ["w"] = { "<cmd>update!<CR>", "Save" },
    ["q"] = { "<cmd>q!<CR>", "Quit" },
    ["f"] = { "<cmd>Telescope find_files<CR>", "Find file" },
    ["h"] = { "<cmd>Telescope live_grep<CR>", "Search text" },
    ["c"] = { "<cmd>bd<CR>", "Close buffer" },
    ["e"] = { "<cmd>NERDTreeToggle<CR>", "Toggle NERDTree" },
    ["r"] = { "<cmd>NERDTreeFocus<CR>", "Focus NERDTree" },
    g = {
        name = "Git",
        s = { "<cmd>Neogit<CR>", "Status" }
    }
}

wk.setup(conf)
wk.register(mappings, opts)
