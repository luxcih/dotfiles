require("vim._core.ui2").enable()
require("core.theme").init()

require("config.globals")
require("config.options")
require("config.keymaps")
require("config.autocmds")
require("config.commands")

require("plugins")
require("lsp")
