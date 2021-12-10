vim.g.nvim_tree_quit_on_open = false
vim.g.nvim_tree_indent_markers = true
vim.g.nvim_tree_git_hl = true
vim.g.nvim_tree_highlight_opened_files = true
vim.g.nvim_tree_root_folder_modifier = ':~'
vim.g.nvim_tree_add_trailing = false
vim.g.nvim_tree_group_empty = true
vim.g.nvim_tree_disable_window_picker = true
vim.g.nvim_tree_icon_padding = ' '
vim.g.nvim_tree_symlink_arrow = ' >> '
vim.g.nvim_tree_respect_buf_cwd = true
vim.g.nvim_tree_create_in_closed_folder = false
vim.g.nvim_tree_refresh_wait = 500
vim.g.nvim_tree_window_picker_exclude = {
    ["filetype"] = { 'notify', 'packer', 'qf' },
    ["buftype"] = { 'terminal' },
}

vim.g.nvim_tree_special_files = {
    ["README.md"] = 1,
    ["Makefile"] = 1,
    ["MAKEFILE"] = 1,
}

vim.g.nvim_tree_show_icons = {
    ["git"] = 1,
    ["folders"] = 1,
    ["files"] = 1,
    ["folder_arrows"] = 1,
}

vim.g.nvim_tree_icons = {
    ["default"] = '',
    ["symlink"] = '',
    ["git"] = {
        ["unstaged"] = "✗",
        ["staged"] = "✓",
        ["unmerged"] = "",
        ["renamed"] = "➜",
        ["untracked"] = "★",
        ["deleted"] = "",
        ["ignored"] = "◌"
    },
    ["folder"]= {
        ["arrow_open"] = "",
        ["arrow_closed"] = "",
        ["default"] = "",
        ["open"] = "",
        ["empty"] = "",
        ["empty_open"] = "",
        ["symlink"] = "",
        ["symlink_open"] = "",
    },
}

vim.api.nvim_command('highlight NvimTreeFolderIcon guibg=blue')

local tree_cb = require'nvim-tree.config'.nvim_tree_callback
-- default mappings
local mappings_list = {
  { key = {"<CR>", "l"},                  cb = tree_cb("edit") },
  { key = {"<C-]>"},                      cb = tree_cb("cd") },
  { key = "<C-v>",                        cb = tree_cb("vsplit") },
  { key = "<C-x>",                        cb = tree_cb("split") },
  { key = "<C-t>",                        cb = tree_cb("tabnew") },
  { key = "<",                            cb = tree_cb("prev_sibling") },
  { key = ">",                            cb = tree_cb("next_sibling") },
  { key = "P",                            cb = tree_cb("parent_node") },
  { key = "h",                            cb = tree_cb("close_node") },
  { key = "<Tab>",                        cb = tree_cb("preview") },
  { key = "I",                            cb = tree_cb("toggle_ignored") },
  { key = "H",                            cb = tree_cb("toggle_dotfiles") },
  { key = "R",                            cb = tree_cb("refresh") },
  { key = "a",                            cb = tree_cb("create") },
  { key = "d",                            cb = tree_cb("remove") },
  { key = "D",                            cb = tree_cb("trash") },
  { key = "r",                            cb = tree_cb("rename") },
  { key = "x",                            cb = tree_cb("cut") },
  { key = "c",                            cb = tree_cb("copy") },
  { key = "p",                            cb = tree_cb("paste") },
  { key = "y",                            cb = tree_cb("copy_name") },
  { key = "Y",                            cb = tree_cb("copy_path") },
  { key = "<BS>",                         cb = tree_cb("dir_up") },
  { key = "q",                            cb = tree_cb("close") },
  { key = "g?",                           cb = tree_cb("toggle_help") },
}

require'nvim-tree'.setup {
  disable_netrw       = true,
  hijack_netrw        = true,
  open_on_setup       = false,
  ignore_ft_on_setup  = {},
  auto_close          = true,
  open_on_tab         = false,
  hijack_cursor       = false,
  update_cwd          = false,
  update_to_buf_dir   = {
    enable = true,
    auto_open = true,
  },
  diagnostics = {
    enable = true,
    icons = {
      hint = "",
      info = "",
      warning = "",
      error = "",
    }
  },
  update_focused_file = {
    enable      = false,
    update_cwd  = false,
    ignore_list = {}
  },
  system_open = {
    cmd  = nil,
    args = {}
  },
  filters = {
    dotfiles = false,
    custom = {}
  },
  git = {
    enable = true,
    ignore = true,
    timeout = 500,
  },
  view = {
    width = 30,
    height = 30,
    hide_root_folder = true,
    side = 'left',
    auto_resize = false,
    mappings = {
      custom_only = true,
      list = mappings_list,
    },
    number = true,
    relativenumber = true
  },
  trash = {
    cmd = "trash",
    require_confirm = true
  }
}


