local keymap = require("core.keymap")
local ui = require("core.ui")

local setup = {
  cmdline = {},
  comment = {},
  completion = {},
  diff = {},
  extra = {},
  git = {},
  hipatterns = {},
  icons = {},
  indentscope = {
    draw = {
      animation = require("mini.indentscope").gen_animation.none(),
    },
  },
  jump = {},
  jump2d = {},
  keymap = {},
  move = {},
  notify = {},
  pairs = {},
  snippets = {
    snippets = {
      require("mini.snippets").gen_loader.from_lang(),
    },
  },
  statusline = {},
  surround = {},
  pick = {
    window = {
      config = ui.centered_float,
    },
  },
}

for module, opts in pairs(setup) do
  require("mini." .. module).setup(opts)
end

keymap.set("n", "<Leader>gh", MiniDiff.toggle_overlay, { desc = "Toggle Git Diff Overlay" })
keymap.set("n", "<Leader>nh", MiniNotify.show_history, { desc = "Notification History" })
keymap.set("n", "<Leader>ff", MiniPick.builtin.files, { desc = "Find Files" })
keymap.set("n", "<Leader>fg", MiniPick.builtin.grep_live, { desc = "Live Grep" })
keymap.set("n", "<Leader>km", MiniExtra.pickers.keymaps, { desc = "Keymaps" })
keymap.set("n", "<Leader>fd", MiniExtra.pickers.diagnostic, { desc = "Diagnostics" })
keymap.set("n", "<Leader>fc", MiniExtra.pickers.commands, { desc = "Commands" })

local map_multistep = require("mini.keymap").map_multistep

map_multistep("i", "<Tab>", {
  "minisnippets_next",
  "minisnippets_expand",
  "pmenu_next",
})

map_multistep("i", "<S-Tab>", {
  "minisnippets_prev",
  "pmenu_prev",
})
