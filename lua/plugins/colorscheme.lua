return {
	{
		"folke/tokyonight.nvim",
		priority = 1000,
		config = function()
			require("tokyonight").setup({
				transparent = true,
				styles = {
					sidebars = "transparent",
					floats = "transparent",
					comments = { italic = true },
					keywords = { italic = true },
					functions = { italic = true },
				},
				on_highlights = function(hl, c)
					hl.DiagnosticVirtualTextError = { fg = c.red, bg = c.none }
					hl.DiagnosticVirtualTextWarn = { fg = c.yellow, bg = c.none }
					hl.DiagnosticVirtualTextHint = { fg = c.green, bg = c.none }
					hl.DiagnosticVirtualTextInfo = { fg = c.blue, bg = c.none }
				end,
			})
			vim.cmd.colorscheme("tokyonight")
		end,
	},
}
