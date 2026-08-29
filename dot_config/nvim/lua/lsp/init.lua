local keymap = require("core.keymap")
local autocmd = require("core.autocmd")

-- Diagnostics
vim.diagnostic.config({
  virtual_text = true,
  update_in_insert = true,
  severity_sort = true,
})

-- Capabilties
vim.lsp.config("*", {
  capabilities = require("lsp.capabilities").get(),
})

keymap.set("n", "]d", function()
  vim.diagnostic.jump({ count = 1, float = true })
end, { desc = "Next Diagnostic" })

keymap.set("n", "[d", function()
  vim.diagnostic.jump({ count = -1, float = true })
end, { desc = "Previous Diagnostic" })

keymap.set("n", "<Leader>e", vim.diagnostic.open_float, { desc = "Line Diagnostics" })

local lsp_group = autocmd.group("Lsp", { clear = true })

autocmd.create("LspAttach", {
  group = lsp_group,
  callback = function(event)
    local buf = event.buf

    keymap.set("n", "gd", vim.lsp.buf.definition, { desc = "Goto Definition", buf = buf })
    keymap.set("n", "gD", vim.lsp.buf.declaration, { desc = "Goto Declaration", buf = buf })
    keymap.set("n", "gi", vim.lsp.buf.implementation, { desc = "Goto Implementation", buf = buf })

    keymap.set("n", "gr", function()
      local MiniExtra = require("mini.extra")
      MiniExtra.pickers.lsp({ scope = "references" })
    end, { desc = "References", buf = buf })

    keymap.set("n", "K", vim.lsp.buf.hover, { desc = "Hover", buf = buf })
    keymap.set("n", "<C-k>", vim.lsp.buf.signature_help, { desc = "Signature Help", buf = buf })

    keymap.set("n", "<Leader>rn", vim.lsp.buf.rename, { desc = "Rename", buf = buf })
    keymap.set("n", "<Leader>ca", vim.lsp.buf.code_action, { desc = "Code Action", buf = buf })
  end,
})

vim.lsp.enable({
  "clangd",
  "cssls",
  "emmet_language_server",
  "eslint",
  "html",
  "lua_ls",
  "pyright",
  "ruff",
  "ts_ls",
  "zls",
})
