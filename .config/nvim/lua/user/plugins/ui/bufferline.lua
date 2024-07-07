local M = { "akinsho/bufferline.nvim" }

M.event = { "BufNewFile", "BufReadPre", "InsertEnter", "VeryLazy" }
M.dependencies = {
    "nvim-tree/nvim-web-devicons",
    "famiu/bufdelete.nvim",
}
M.opts = {
    options = {
        mode = "buffers",
        close_command = "Bdelete! %d",
        right_mouse_command = "Bdelete! %d",
        left_mouse_command = "buffer %d",
        offsets = {
            {
                filetype = "NvimTree",
                text = "File Explorer",
                text_align = "center",
            },
        },
    },
}

return M
