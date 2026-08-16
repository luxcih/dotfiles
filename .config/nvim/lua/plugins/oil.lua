local keymap = require("core.keymap")
local ui = require("core.ui")

require("oil").setup({
  constrain_cursor = "name",
  view_options = {
    show_hidden = true,
  },
  float = {
    win_options = {
      winblend = vim.o.winblend,
    },
    override = function()
      return ui.centered_float()
    end,
  },
  keymaps = {
    ["<Esc>"] = "actions.close",
  },
})

keymap.set("n", "-", function()
  require("oil").open_float()
end, { desc = "Explorer" })
