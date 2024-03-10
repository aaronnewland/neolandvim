return {
	-- IMPORTANT
	-- IF COLOR SCHEME IS CHANGED HERE THAN CHANGE
	-- lualine-theme.lua AS WELL

	-- {
	-- 	"folke/tokyonight.nvim",
	-- 	priority = 1000,
	-- 	config = function()
	-- 		require("tokyonight").setup({
	-- 			transparent = true,
	-- 			styles = {
	-- 				sidebars = "transparent",
	-- 				floats = "transparent",
	-- 				comments = { italic = true },
	-- 				keywords = { italic = true },
	-- 				functions = { italic = true },
	-- 			},
	-- 			on_highlights = function(hl, c)
	-- 				hl.DiagnosticVirtualTextError = { fg = c.red, bg = c.none }
	-- 				hl.DiagnosticVirtualTextWarn = { fg = c.yellow, bg = c.none }
	-- 				hl.DiagnosticVirtualTextHint = { fg = c.green, bg = c.none }
	-- 				hl.DiagnosticVirtualTextInfo = { fg = c.blue, bg = c.none }
	-- 			end,
	-- 		})
	-- 		vim.cmd.colorscheme("tokyonight")
	-- 	end,
	-- },
	{
		"catppuccin/nvim",
		name = "catppuccin",
		priority = 1000,
		config = function()
			require("catppuccin").setup({
				flavour = "mocha",
				transparent_background = true,
				no_italic = false,
				no_bold = false,
				styles = {
					comments = { "italic" },
					keywords = { "italic" },
					functions = { "italic" },
				},
				integrations = {
					-- harpoon = true,
					cmp = true,
					gitsigns = true,
					indent_blankline = { enabled = true },
					lsp_trouble = true,
					mason = true,
					mini = true,
					native_lsp = {
						enabled = true,
						underlines = {
							errors = { "undercurl" },
							hints = { "undercurl" },
							warnings = { "undercurl" },
							information = { "undercurl" },
						},
					},
					noice = true,
					notify = true,
					nvimtree = true,
					telescope = true,
					treesitter = true,
					which_key = true,
				},
				highlight_overrides = {
					all = function(colors)
						return {
							DiagnosticVirtualTextError = { bg = colors.none },
							DiagnosticVirtualTextWarn = { bg = colors.none },
							DiagnosticVirtualTextHint = { bg = colors.none },
							DiagnosticVirtualTextInfo = { bg = colors.none },
						}
					end,
				},
				-- color_overrides = {
				-- 	mocha = {
				-- 		peach = "#fcc6a7",
				-- 		green = "#d2fac5",
				-- 	},
				-- },
			})
			vim.cmd.colorscheme("catppuccin")
		end,
	},
}
