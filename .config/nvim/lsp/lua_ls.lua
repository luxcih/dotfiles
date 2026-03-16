local M = {}

M.cmd = { "lua-language-server" }
M.filetypes = { "lua" }
M.settings = {
    Lua = {
        codelens = { enable = true },
        hint = { enable = true, semicolon = "Disable" },
        workplace = {
            library = vim.api.nvim_get_runtime_file("", true),
        },
    },
}

return M
