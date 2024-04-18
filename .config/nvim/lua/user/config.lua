vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.g.loaded_python3_provider = 0
vim.g.loaded_ruby_provider = 0
vim.g.loaded_node_provider = 0
vim.g.loaded_perl_provider = 0

vim.opt.expandtab = true
vim.opt.smartindent = true
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4

vim.opt.cursorline = true
vim.opt.cursorlineopt = "both"

vim.opt.timeout = true
vim.opt.timeoutlen = 0

vim.opt.number = true
vim.opt.undofile = true
vim.opt.smartcase = true
vim.opt.termguicolors = true

vim.opt.laststatus = 3
vim.opt.hlsearch = false
vim.opt.showmode = false

vim.opt.completeopt = { "menu", "menuone", "noselect" }
vim.opt.clipboard = "unnamedplus"
vim.opt.mouse = "a"
vim.opt.shortmess:append("sI")
vim.opt.whichwrap:append("<>[]hl")
