local lazy_config = {
    install = {
        colorscheme = { "catppuccin" },
    },
    defaults = {
        lazy = true,
        version = "*",
    },
}

require("lazy").setup("base.plugins", lazy_config)
