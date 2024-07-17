local M = {}

M.opts = {
    lsp = {
        override = {
            ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
            ["vim.lsp.util.stylize_markdown"] = true,
            ["cmp.entry.get_documentation"] = true,
        },
    },
    presets = {
        command_palette = true,
    },
}

M.setup = function(plugin, opts)
    local noice = require("noice")
    local keymaps = require("config.keymaps.ui")

    noice.setup(opts)
    keymaps.setup()
end

return M
