return {
    { -- file explorer: nvim-tree
        "nvim-tree/nvim-tree.lua",
        event = "VeryLazy",
        opts = {
            hijack_cursor = true,
            renderer = { root_folder_label = false },
        },
    },

    { -- keybindings pop-up: which-key
        "folke/which-key.nvim",
        event = "VeryLazy",
        config = function()
            local mappings = require("user.mappings")
            local wk = require("which-key")

            wk.setup()
            wk.register(mappings)
        end,
    },

    { -- statusline: lualine
        "nvim-lualine/lualine.nvim",
        dependencies = { "nvim-tree/nvim-web-devicons" },
        event = "VeryLazy",
        config = true,
    },

    { -- bufferline
        "akinsho/bufferline.nvim",
        dependencies = { "nvim-tree/nvim-web-devicons", "famiu/bufdelete.nvim" },
        event = "VeryLazy",
        opts = {
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
        },
    },
}
