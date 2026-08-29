local autocmd = require("core.autocmd")

local yank = autocmd.group("yank", { clear = true })
local numbers = autocmd.group("numbers", { clear = true })
local cursor = autocmd.group("cursor", { clear = true })
local windows = autocmd.group("windows", { clear = true })
local utility = autocmd.group("utility", { clear = true })

-- Highlight yanked text
autocmd.create("TextYankPost", {
  group = yank,
  desc = "Highlight yanked text",
  callback = function()
    vim.hl.on_yank({
      timeout = 300,
      visual = true,
    })
  end,
})

-- Toggle relative numbers in insert mode
autocmd.create("InsertEnter", {
  group = numbers,
  desc = "Disable relative numbers",
  callback = function()
    if vim.bo.buftype == "" then
      vim.wo.relativenumber = false
    end
  end,
})

autocmd.create("InsertLeave", {
  group = numbers,
  desc = "Enable relative numbers",
  callback = function()
    if vim.bo.buftype == "" then
      vim.wo.relativenumber = true
    end
  end,
})

-- Restore cursor position when reopening files
autocmd.create("BufReadPost", {
  group = cursor,
  desc = "Restore cursor position",
  callback = function()
    local mark = vim.api.nvim_buf_get_mark(0, '"')
    local line_count = vim.api.nvim_buf_line_count(0)

    if mark[1] > 0 and mark[1] <= line_count then
      pcall(vim.api.nvim_win_set_cursor, 0, mark)
    end
  end,
})

-- Equalize windows after resizing
autocmd.create("VimResized", {
  group = windows,
  desc = "Equalize window sizes",
  command = "wincmd =",
})

-- Close utility windows with q or <Esc>
autocmd.create("FileType", {
  group = utility,
  desc = "Add close keymaps to utility windows",
  pattern = {
    "checkhealth",
    "help",
    "man",
    "qf",
  },
  callback = function(args)
    local keymap = require("core.keymap")
    local opts = {
      desc = "Close window",
      buffer = args.buf,
      silent = true,
    }

    keymap.set("n", "q", vim.cmd.quit, opts)
    keymap.set("n", "<Esc>", vim.cmd.quit, opts)
  end,
})
