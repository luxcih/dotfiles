local M = {}

M.opts = {}

M.setup = function(plugin, opts)
    local telescope = require("telescope")
    local keymaps = require("config.keymaps.telescope")

    telescope.setup(opts)
    telescope.load_extension("fzf")

    keymaps.setup()
end

return M
