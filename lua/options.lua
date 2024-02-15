local opt = vim.opt
local g = vim.g

-------------------------------------- globals -----------------------------------------
g.transparency = true
g.mapleader = " "
------------------------------------- options -----------------------------------------
--opt.laststatus = 3 -- global statusline
--opt.showmode = false

-- Sync nvim clipboard with system clipboard
opt.clipboard = "unnamedplus"
--opt.cursorline = true

-- No highlighting on search
opt.hlsearch = false

-- Indenting
opt.expandtab = true
opt.shiftwidth = 2
opt.smartindent = true
opt.tabstop = 2
opt.softtabstop = 2
opt.fillchars = { eob = " " }
opt.ignorecase = true
opt.smartcase = true
opt.mouse = "a"

-- Numbers
opt.number = true
opt.relativenumber = true
opt.numberwidth = 2
opt.ruler = false

-- Window splitting
opt.splitbelow = true
opt.splitright = true

-- Wrapping/Linebreaks
opt.colorcolumn = "80"
opt.wrap = true
opt.linebreak = true
opt.breakindent = true

-- Virtual Edit
-- Can place the cursor where there is no actual character
opt.virtualedit = "block"

-- Misc.
opt.undofile = true
opt.termguicolors = true
opt.scrolloff = 999
-- Preview changes for search and replace
opt.inccommand = "split"

-- Set highlight bottom line for TreeSitterContext
vim.api.nvim_set_hl(0, "TreesitterContextBottom", { underline = true })
vim.api.nvim_set_hl(0, "TreesitterContextLineNumberBottom", { underline = true })

-- vim.diagnostic.config({
-- 	virtual_text = {
-- 		DiagnosticVirtualTextError = "󰳤",
-- 		DiagnosticVirtualTextWarn = "󰳤",
-- 		DiagnosticVirtualTextHint = "󰳤",
-- 		DiagnosticVirtualTextInfo = "󰳤",
-- 	},
-- })
