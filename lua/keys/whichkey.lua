local wk = require('which-key')

-- Normal Mappings
local normal_mappings = {
    t = {
        name = "+Telescope",
        f = { "<cmd>Telescope find_files<cr>", "Find Files" },
        e = { "<cmd>Telescope file_browser<cr>", "File Explorer" },
        r = { "<cmd>Telescope oldfiles<cr>", "Recent Files" },
        g = { "<cmd>Telescope live_grep<cr>", "Live Grep" },
        b = { "<cmd>Telescope buffers<cr>", "Buffers" },
        t = { "<cmd>Telescope treesitter<cr>", "TreeSitter" },
    },
    w = {
        name = "+Window",
        ["+"] = { "<c-w>+", "Increase Height" },
        ["-"] = { "<c-w>-", "Decrease Height" },
        ["="] = { "<c-w>=", "Equal Height" },
        [">"] = { "<c-w>>", "Increase Width" },
        ["<"] = { "<c-w><", "Decrease Width" },
        ["|"] = { "<c-w>|", "Max Width" },
        h = { "<c-w>h", "Move Left" },
        l = { "<c-w>l", "Move Right" },
        j = { "<c-w>j", "Move Down" },
        k = { "<c-w>k", "Move Up" },
        q = { "<c-w>q", "Quit Window" },
        t = { "<c-w>t", "Break out to Tab" },
        s = { "<c-w>s", "Split Window Horizontally" },
        v = { "<c-w>v", "Split Window Vertically" },
        w = { "<c-w>w", "Switch Windows" },
        x = { "<c-w>w", "Swap with Next" },
    },
    ["<space>"] = { "<cmd> lua require('Comment.api').toggle()<cr>", "Comment" },
    f = {
        name = "+FloatTerm",
        b = { "<cmd>lua require('FTerm').open()<cr>", "Bash Terminal" },
        p = { "<cmd>lua __fterm_python()<cr>", "Python Terminal" },
    },
    e = { "<cmd>NvimTreeToggle<CR>", "File Explorer" },
}

local normal_opts = { prefix = "<leader>", mode = "n" }

wk.register(normal_mappings, normal_opts)

-- Visual Mappings
local visual_mappings = {
    ["<space>"] = { "<esc><cmd>lua require('Comment.api').gc(vim.fn.visualmode())<cr>", "Comment" }
}

local visual_opts = { prefix = "<leader>", mode = "v"}

wk.register(visual_mappings, visual_opts)
