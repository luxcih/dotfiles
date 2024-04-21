local lazy_config = {
    install = {
        colorscheme = { "catppuccin" },
    },
    spec = {
        event = "VeryLazy",
    },
}

require("lazy").setup("base.plugins", lazy_config)
