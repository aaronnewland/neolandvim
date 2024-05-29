local map = vim.keymap

map.set("n", "<leader>ov", vim.cmd.Ex)
map.set("n", "<leader>bn", "<cmd>enew<CR>", { desc = "create [b]uffer [n]ew" })
map.set("n", "<leader>noh", "<cmd> set hlsearch! <CR>", { desc = "[n][o] [h]ighlight search toggle" })
map.set("n", "<C-a>", "ggVG", { desc = "select [a]ll text in file" })

map.set("i", "<C-c>", "<Esc>")

-- Allow moving the cursor through wrapped lines with j, k, <Up> and <Down>
-- http://www.reddit.com/r/vim/comments/2k4cbr/problem_with_gj_and_gk/
-- empty mode is same as using <cmd> :map
-- also don't use g[j|k] when in operator pending mode, so it doesn't alter d, y or c behaviour
map.set("n", "j", 'v:count || mode(1)[0:1] == "no" ? "j" : "gj"', { expr = true })
map.set("n", "k", 'v:count || mode(1)[0:1] == "no" ? "k" : "gk"', { expr = true })
map.set("n", "<up>", 'v:count || mode(1)[0:1] == "no" ? "k" : "gk"', { expr = true })
map.set("n", "<down>", 'v:count || mode(1)[0:1] == "no" ? "j" : "gj"', { expr = true })

-------------------------------------- keep paste item in clipboard after paste ----------
map.set("v", "<leader>p", '"_dP')
map.set("n", "<leader>p", '"_dP')
-------------------------------------- switch between windows ----------------------------
map.set("n", "<C-h>", "<C-w>h", { desc = "Window left" })
map.set("n", "<C-l>", "<C-w>l", { desc = "Window right" })
map.set("n", "<C-j>", "<C-w>j", { desc = "Window down" })
map.set("n", "<C-k>", "<C-w>k", { desc = "Window up" })

-------------------------------------- splitting windows ---------------------------------
map.set("n", "<leader>|", "<cmd>vsp<CR>", { desc = "split window vertically [|]" })
map.set("n", "<leader>-", "<cmd>sp<CR>", { desc = "split window horizontally [-]" })

-------------------------------------- save ----------------------------------------------
map.set("n", "<C-s>", "<cmd>w<CR>", { desc = "[s]ave file" })

-------------------------------------- nvimtree ------------------------------------------
map.set("n", "<C-n>", "<cmd>NvimTreeToggle<CR>", { desc = "toggle [n]vimtree" })
map.set("n", "<leader>e", "<cmd>NvimTreeFocus<CR>", { desc = "focus nvimtr[e]e" })

-------------------------------------- comments ------------------------------------------
map.set("n", "<leader>/", "<cmd>lua require('Comment.api').toggle.linewise.current() <CR>", { desc = "toggle comment" })
map.set(
	"v",
	"<leader>/",
	"<ESC><cmd>lua require('Comment.api').toggle.linewise(vim.fn.visualmode())<CR>",
	{ desc = "toggle comment" }
)

-------------------------------------- tmux navigation -----------------------------------
map.set("n", "<C-h>", "<cmd> TmuxNavigateLeft <CR>", { desc = "Tmux Window left" })
map.set("n", "<C-l>", "<cmd> TmuxNavigateRight <CR>", { desc = "Tmux Window right" })
map.set("n", "<C-j>", "<cmd> TmuxNavigateDown <CR>", { desc = "Tmux Window down" })
map.set("n", "<C-k>", "<cmd> TmuxNavigateUp <CR>", { desc = "Tmux Window up" })

-------------------------------------- Symbols Outline -----------------------------------
map.set("n", "<leader>so", "<cmd> SymbolsOutline <CR>", { desc = "Toggle [s]ymbols [o]utline" })

-------------------------------------- Trouble -------------------------------------------
vim.keymap.set("n", "<leader>xx", function()
	require("trouble").toggle()
end, { desc = "Trouble Toggle" })
vim.keymap.set("n", "<leader>xw", function()
	require("trouble").toggle("workspace_diagnostics")
end, { desc = "Trouble Toggle Worksape Diagnostics" })
vim.keymap.set("n", "<leader>xd", function()
	require("trouble").toggle("document_diagnostics")
end, { desc = "Trouble Toggle Document Diagnostics" })
vim.keymap.set("n", "<leader>xq", function()
	require("trouble").toggle("quickfix")
end, { desc = "Trouble Toggle Quickfix" })
vim.keymap.set("n", "<leader>xl", function()
	require("trouble").toggle("loclist")
end, { desc = "Trouble Toggle Local List" })
vim.keymap.set("n", "gR", function()
	require("trouble").toggle("lsp_references")
end, { desc = "Trouble Toggle LSP References" })

-------------------------------------- Todo Highlighting/Go To ---------------------------
map.set("n", "<leader>tq", "<cmd> TodoQuickFix <CR>", { desc = "[t]odo [q]uick fix list" })
map.set("n", "<leader>tl", "<cmd> TodoLocList <CR>", { desc = "[t]odo [l]ocation list" })
map.set("n", "<leader>tT", "<cmd> TodoTrouble <CR>", { desc = "[t]odo [T]rouble list" })
map.set("n", "<leader>tt", "<cmd> TodoTelescope <CR>", { desc = "[t]odo [t]elescope search" })

-------------------------------------- TreesitterContext ---------------------------------
vim.keymap.set("n", "[c", function()
	require("treesitter-context").go_to_context(vim.v.count1)
end, { silent = true })

-------------------------------------- Dap ---------------------------------
vim.keymap.set("n", "<leader>db", function()
	require("dap").toggle_breakpoint()
end, { desc = "[d]ap toggle [b]reakpoint" })

vim.keymap.set("n", "<leader>dc", function()
	require("dap").continue()
end, { desc = "[d]ap [c]ontinue" })

vim.keymap.set("n", "<leader>ds", function()
	require("dap").step_into()
end, { desc = "[d]ap [s]tep into" })

vim.keymap.set("n", "<leader>dR", function()
	require("dap").repl.open()
end, { desc = "[d]ap inspect state via [R]EPL" })
