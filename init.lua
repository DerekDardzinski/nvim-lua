vim.cmd([[source $HOME/.config/nvim/vim-plug/plugins.vim]])
vim.cmd([[source $HOME/.config/nvim/general/settings.vim]])
-- require('themes.tokyonight')
-- require('themes.moonlight')
-- require('themes.nightfox')
require('themes.catppuccin')
require('keys.whichkey')
require('plugins.whichkey')
require('plugins.comment')
require('plugins.tree')
require('plugins.autopairs')
require('plugins.surround')
require('plugins.nvim-cmp')
require('plugins.lspconfig')
require('plugins.lspsaga')
require('plugins.treesitter')
require('plugins.dressing')
require('plugins.fterm')
require('plugins.telescope')
require('plugins.lualine')
require('plugins.barbar')

vim.cmd([[hi WhichKeyFloat ctermbg=BLACK ctermfg=BLACK]])

