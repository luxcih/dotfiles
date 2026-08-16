vim.pack.add({ -- Colorschemes
  { src = "https://github.com/catppuccin/nvim", name = "catppuccin" },
  "https://github.com/ellisonleao/gruvbox.nvim",
  "https://github.com/folke/tokyonight.nvim",
  "https://github.com/rebelot/kanagawa.nvim",
  { src = "https://github.com/rose-pine/neovim", name = "rose-pine" },
})

require("plugins.colorschemes")

vim.pack.add({ -- Plugins
  "https://github.com/folke/lazydev.nvim",
  "https://github.com/malewicz1337/oil-git.nvim",
  "https://github.com/mason-org/mason.nvim",
  "https://github.com/neovim/nvim-lspconfig",
  "https://github.com/nvim-mini/mini.nvim",
  "https://github.com/nvim-treesitter/nvim-treesitter",
  "https://github.com/rafamadriz/friendly-snippets",
  "https://github.com/stevearc/conform.nvim",
  "https://github.com/stevearc/oil.nvim",
  "https://github.com/windwp/nvim-ts-autotag",
})

require("plugins.mini")
require("plugins.oil")
require("plugins.undotree")
require("plugins.conform")
require("plugins.tools")
