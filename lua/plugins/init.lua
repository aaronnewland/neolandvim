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
	{
		"folke/trouble.nvim",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		opts = {
			-- your configuration comes here
			-- or leave it empty to use the default settings
			-- refer to the configuration section below
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
