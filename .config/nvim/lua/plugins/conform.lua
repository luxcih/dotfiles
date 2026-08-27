local keymap = require("core.keymap")
local conform = require("conform")

conform.setup({
  default_format_opts = {
    lsp_format = "fallback",
  },
  formatters_by_ft = {
    c = { "clang_format" },
    css = { "prettier" },
    html = { "prettier" },
    javascript = { "prettier" },
    json = { "prettier" },
    lua = { "stylua" },
    markdown = { "prettier" },
    python = { "ruff_fix", "ruff_format", "ruff_organize_imports" },
    typescript = { "prettier" },
  },
  format_on_save = {},
})

keymap.set("n", "<Leader>fm", function()
  conform.format({ async = true })
end, { desc = "Format" })
