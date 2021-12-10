-- Example config in Lua
vim.g.tokyonight_style = "night"
vim.g.tokyonight_transparent = true
vim.g.tokyonight_transparent_sidebar = true
vim.g.tokyonight_dark_float = false
vim.g.tokyonight_dark_sidebar = false

-- Change the "hint" color to the "orange" color, and make the "error" color bright red
vim.g.tokyonight_colors = { bg_float = "NONE", comment = "#ebf3fc" }

-- Load the colorscheme
vim.cmd[[colorscheme tokyonight]]
