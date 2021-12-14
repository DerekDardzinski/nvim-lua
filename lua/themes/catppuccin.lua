local catppuccin = require("catppuccin")

-- configure it
catppuccin.setup(
    {
		transparent_background = true,
		term_colors = false,
		styles = {
			comments = "italic",
			functions = "italic",
			keywords = "italic",
			strings = "NONE",
			variables = "NONE",
		},
		integrations = {
			treesitter = true,
			native_lsp = {
				enabled = true,
				virtual_text = {
					errors = "italic",
					hints = "italic",
					warnings = "italic",
					information = "italic",
				},
				underlines = {
					errors = "underline",
					hints = "underline",
					warnings = "underline",
					information = "underline",
				},
			},
			lsp_trouble = false,
			lsp_saga = false,
			gitgutter = false,
			gitsigns = false,
			telescope = true,
			nvimtree = {
				enabled = true,
				show_root = false,
			},
			which_key = true,
			indent_blankline = {
				enabled = false,
				colored_indent_levels = false,
			},
			dashboard = false,
			neogit = false,
			vim_sneak = false,
			fern = false,
			barbar = false,
			bufferline = false,
			markdown = false,
			lightspeed = false,
			ts_rainbow = true,
			hop = false,
            cmp = true,
		},
	}
)

catppuccin.remap({
    NormalFloat = { bg = "NONE" },
    Normal = { bg = "NONE" },
    StatusLine = { bg = "NONE" },
    VertSplit = { bg = "NONE" },
    WhichKeyFloat = { bg = "NONE" },
    NvimTreeNormal = { bg = "NONE" },
    NvimTreeVertSplit = { bg = "NONE" },
    NvimTreeStatuslineNc = { bg = "NONE" },
})

-- Lua
vim.cmd[[colorscheme catppuccin]]
