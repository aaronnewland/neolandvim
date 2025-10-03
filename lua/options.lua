local opt = vim.opt
local g = vim.g

-------------------------------------- globals -----------------------------------------
g.transparency = true
g.mapleader = " "
------------------------------------- options -----------------------------------------
--opt.laststatus = 3 -- global statusline
--opt.showmode = false

-- TODO: fix
-- Blinking cursor
-- Currently set to block/blink in normal and v-line/blink in insert
opt.guicursor =
	"n-v-c:block,i-ci-ve:ver25,r-cr:hor20,o:hor50,a:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor,sm:block-blinkwait175-blinkoff150-blinkon175"

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

-------------------------------------- autocommands --------------------------------------
vim.cmd("autocmd BufEnter * set formatoptions-=cro")
vim.cmd("autocmd BufEnter * setlocal formatoptions-=cro")

-------------------------------------- UFO --------------------------------------
vim.o.foldcolumn = "1" -- '0' is not bad
vim.o.foldlevel = 99 -- Using ufo provider need a large value, feel free to decrease the value
vim.o.foldlevelstart = 99
vim.o.foldenable = true
vim.o.fillchars = [[eob: ,fold: ,foldopen:,foldsep: ,foldclose:]]
vim.o.foldcolumn = "1"
