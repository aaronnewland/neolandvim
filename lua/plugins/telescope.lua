return {
	'nvim-telescope/telescope.nvim', tag = '0.1.5',
	-- or                              , branch = '0.1.x',
	dependencies = {
	    "nvim-lua/plenary.nvim",
	    { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
	    "nvim-tree/nvim-web-devicons",
	},
	config = function()
	    local telescope = require("telescope")
	    local actions = require("telescope.actions")

	    telescope.setup({
	        defaults = {
	            path_display = { "truncate " },
	            mappings = {
	                i = {
	                    ["<Tab>"] = actions.move_selection_previous, -- move to prev result
	                    ["<S-Tab>"] = actions.move_selection_next, -- move to next result
	                    ["<C-q>"] = actions.send_selected_to_qflist + actions.open_qflist,
	                },
	            },
	        },
	    })

	    telescope.load_extension("fzf")

	    -- set keymaps
	    local keymap = vim.keymap

	    keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>", { desc = "Fuzzy find files in cwd" })
	    keymap.set("n", "<leader>fr", "<cmd>Telescope oldfiles<cr>", { desc = "Fuzzy find recent files" })
	    keymap.set("n", "<leader>fw", "<cmd>Telescope live_grep<cr>", { desc = "Find string in cwd" })
	    keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>", { desc = "Find string under cursor in cwd" })
	end,
}
