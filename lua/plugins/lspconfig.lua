local nvim_lsp = require('lspconfig')
local wk = require("which-key")

-- Use an on_attach function to only map the following keys
-- after the language server attaches to the current buffer
local on_attach = function(client, bufnr)
    local keymap = {
        l = {
            name = "+LSP",
            d = { "<cmd>lua vim.lsp.buf.definition()<CR>", "Go to Defn."},
            h = { "<cmd>lua vim.lsp.buf.hover()<CR>", "Hover"},
            r = { "<cmd>Lspsaga rename<CR>", "Rename"},
            a = { "<cmd>Lspsaga code_action<CR>", "Code Action"},
            p = { "<cmd>Lspsaga diagnostic_jump_prev<CR>", "Prev Diagnostic"},
            n = { "<cmd>Lspsaga diagnostic_jump_next<CR>", "Next Diagnostic"},
            s = { "<cmd>Lspsaga show_line_diagnostics<CR>", "Show Diagnostic"}
        },
    }
    vim.lsp.handlers["textDocument/hover"] =  vim.lsp.with(
        vim.lsp.handlers.hover,
        {border = "rounded"}
    )

    wk.register(keymap, { buffer = bufnr, prefix = "<leader>" })

end

-- https://github.com/sumneko/lua-language-server/wiki/Build-and-Run-(Standalone)
USER = vim.fn.expand('$USER')

local sumneko_root_path = os.getenv("HOME").."/.config/nvim/lua-language-server/bin"
local sumneko_binary = os.getenv("HOME").."/.config/nvim/lua-language-server/bin/Linux/lua-language-server"

nvim_lsp['sumneko_lua'].setup {
    cmd = {sumneko_binary, "-E", sumneko_root_path.."/main.lua"},
    on_attach = on_attach,
    settings = {
        Lua = {
            runtime = {
                -- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
                version = 'LuaJIT',
                -- Setup your lua path
                path = vim.split(package.path, ';')
            },
            diagnostics = {
                -- Get the language server to recognize the `vim` global
                globals = {'vim'}
            },
            workspace = {
                -- Make the server aware of Neovim runtime files
                -- library = vim.api.nvim_get_runtime_file("", true),
                preloadFileSize = 500,
                library = {[vim.fn.expand('$VIMRUNTIME/lua')] = true, [vim.fn.expand('$VIMRUNTIME/lua/vim/lsp')] = true}
            },
        },
    },
}

-- Use a loop to conveniently call 'setup' on multiple servers and
-- map buffer local keybindings when the language server attaches
local servers = { 'pyright', 'bashls', 'vimls', 'jsonls' }
for _, lsp in ipairs(servers) do
  nvim_lsp[lsp].setup {
    on_attach = on_attach,
    flags = {
      debounce_text_changes = 150,
    }
  }
end

