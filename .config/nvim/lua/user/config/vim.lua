-- Set the leader key for the mappings
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Disable some built-in plugins we don't need
vim.g.loaded_netrw = 1         -- Disable netrw
vim.g.loaded_netrwPlugin = 1   -- Disable netrwPlugin
vim.g.loaded_python3_provider = 0 -- Disable Python 3 provider
vim.g.loaded_ruby_provider = 0 -- Disable Ruby provider
vim.g.loaded_node_provider = 0 -- Disable Node.js provider
vim.g.loaded_perl_provider = 0 -- Disable Perl provider

-- Indentation settings
vim.opt.expandtab = true       -- Use spaces instead of tabs
vim.opt.smartindent = true     -- Enable smart indentation
vim.opt.tabstop = 4            -- Number of spaces per tab
vim.opt.softtabstop = 4        -- Number of spaces per tab in insert mode
vim.opt.shiftwidth = 4         -- Number of spaces to use for each step of (auto)indent

-- Cursor settings
vim.opt.cursorline = true      -- Highlight the screen line of the cursor
vim.opt.cursorlineopt = "both" -- Highlight both line and column of the cursor
vim.opt.scrolloff = 999

-- Timeout settings
vim.opt.timeout = true         -- Enable timeout for mapped sequences
vim.opt.timeoutlen = 0         -- Timeout length for mapped sequences (in milliseconds)

-- UI settings
vim.opt.number = true          -- Show line numbers
vim.opt.undofile = true        -- Enable persistent undo
vim.opt.smartcase = true       -- Enable smart case search
vim.opt.termguicolors = true   -- Enable 24-bit RGB color in the TUI

vim.opt.laststatus = 3         -- Global statusline
vim.opt.hlsearch = false       -- Disable search highlighting
vim.opt.showmode = false       -- Don't show mode (e.g., -- INSERT --)

-- Completion settings
vim.opt.completeopt = { "menu", "menuone", "noselect" } -- Completion options

-- Clipboard settings
vim.opt.clipboard = "unnamedplus" -- Use system clipboard

-- Mouse settings
vim.opt.mouse = "a" -- Enable mouse in all modes

-- Miscellaneous settings
vim.opt.shortmess:append("sI")     -- Disable startup messages and ins-completion-menu messages
vim.opt.whichwrap:append("<>[]hl") -- Allow specified keys to wrap to next/previous line
vim.opt.rtp:prepend(require("user.config.lazy").path) -- Add lazy to runtime-path
