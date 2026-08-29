-- UI
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.cursorline = true

vim.opt.signcolumn = "yes"
vim.opt.laststatus = 3
vim.opt.termguicolors = true

vim.opt.guicursor = ""

-- Windows
vim.opt.splitbelow = true
vim.opt.splitright = true

vim.opt.winborder = "single"
vim.opt.winblend = 20

-- Completion
vim.opt.completeopt = {
  "menu",
  "menuone",
  "noselect",
  "popup",
  "fuzzy",
}

vim.opt.pumborder = "single"
vim.opt.pumblend = 20

-- Search
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Scrolling
vim.opt.scrolloff = 8
vim.opt.sidescrolloff = 4

-- Indentation
vim.opt.expandtab = true
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.softtabstop = 4

-- Persistence
vim.opt.swapfile = false
vim.opt.backup = false

vim.opt.undofile = true
vim.opt.undodir = vim.fs.joinpath(vim.fn.stdpath("data"), "undo")

vim.opt.confirm = true
