local M = { "nvim-tree/nvim-tree.lua" }

M.event = "VeryLazy"
M.opts = {
    hijack_cursor = true,
    renderer = { root_folder_label = false },
}

return M
