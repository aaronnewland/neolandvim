return {
	--TODO: git integration
	-- copilot
	--TODO: add harpoon
	--TODO: change todo highlight color
	--TODO: look into dashboard vs. alpha
	--TODO: auto-session
	--TODO: add dap/debugging

	{
		"MaxMEllon/vim-jsx-pretty",
	},
	{
		"othree/javascript-libraries-syntax.vim",
	},
	{
		"pangloss/vim-javascript",
	},
	{
		"nvim-treesitter/nvim-treesitter-textobjects",
	},

	{
		"christoomey/vim-tmux-navigator",
		lazy = false,
	},
	{
		"simrat39/symbols-outline.nvim",
		event = "VeryLazy",
		config = function()
			require("symbols-outline").setup()
		end,
	},
	{
		"folke/todo-comments.nvim",
		dependencies = { "nvim-lua/plenary.nvim" },
		opts = {
			-- your configuration comes here
			-- or leave it empty to use the default settings
			-- refer to the configuration section below
		},
	},
	-- {
	-- 	"folke/trouble.nvim",
	-- 	dependencies = { "nvim-tree/nvim-web-devicons" },
	-- 	opts = {
	-- 		-- your configuration comes here
	-- 		-- or leave it empty to use the default settings
	-- 		-- refer to the configuration section below
	-- 	},
	-- },
	{
		"folke/trouble.nvim",
		opts = {}, -- for default options, refer to the configuration section for custom setup.
		cmd = "Trouble",
		keys = {
			{
				"<leader>xx",
				"<cmd>Trouble diagnostics toggle<cr>",
				desc = "Diagnostics (Trouble)",
			},
			{
				"<leader>xX",
				"<cmd>Trouble diagnostics toggle filter.buf=0<cr>",
				desc = "Buffer Diagnostics (Trouble)",
			},
			{
				"<leader>cs",
				"<cmd>Trouble symbols toggle focus=false<cr>",
				desc = "Symbols (Trouble)",
			},
			{
				"<leader>cl",
				"<cmd>Trouble lsp toggle focus=false win.position=right<cr>",
				desc = "LSP Definitions / references / ... (Trouble)",
			},
			{
				"<leader>xL",
				"<cmd>Trouble loclist toggle<cr>",
				desc = "Location List (Trouble)",
			},
			{
				"<leader>xQ",
				"<cmd>Trouble qflist toggle<cr>",
				desc = "Quickfix List (Trouble)",
			},
		},
	},
	{
		"nvim-treesitter/nvim-treesitter-context",
	},
	{
		"tpope/vim-fugitive",
		event = "VeryLazy",
	},
	{
		"RRethy/vim-illuminate",
	},
}
