local event = { "BufNewFile", "BufReadPre", "InsertEnter", "VeryLazy" }

return {
    { "lewis6991/gitsigns.nvim",             event = event, config = true },
    { "numToStr/Comment.nvim",               event = event, config = true },
    { "folke/todo-comments.nvim",            event = event, config = true },
    { "windwp/nvim-autopairs",               event = event, config = true },
    { "lukas-reineke/indent-blankline.nvim", event = event, config = true,  main = "ibl" },
}
