return {
	"nvim-lualine/lualine.nvim",
	--event = "VeryLazy",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	opts = function()
		local lualine_require = require("lualine_require")
		lualine_require.require = require

		local icons = require("plugins.utils.icons").icons

		vim.o.laststatus = vim.g.lualine_laststatus
		return {
			options = {
				theme = "auto",
				globalstatus = true,
				disabled_filetypes = { statusline = { "dashboard", "alpha", "starter" } },
			},
			sections = {
				lualine_a = { "mode" },
				lualine_b = { "branch" },

				lualine_c = {
					{
						"diagnostics",
						symbols = {
							error = icons.diagnostics.Error,
							warn = icons.diagnostics.Warn,
							info = icons.diagnostics.Info,
							hint = icons.diagnostics.Hint,
						},
					},
					{ "filetype", icon_only = true, separator = "", padding = { left = 1, right = 0 } },
					-- prints path of current file relative to working project directory
					{ "vim.fn.expand('%:p:~:.')" },
				},
				lualine_x = {
                    -- stylua: ignore
                    {
                        function() return require("noice").api.status.command.get() end,
                        cond = function() return package.loaded["noice"] and require("noice").api.status.command.has() end,
                        -- color = Util.ui.fg("Statement"),
                        color = function()
                            local name = "Statement"
                            ---@type {foreground?:number}?
                            ---@diagnostic disable-next-line: deprecated
                            local hl = vim.api.nvim_get_hl and vim.api.nvim_get_hl(0, { name = name }) or vim.api.nvim_get_hl_by_name(name, true)
                            ---@diagnostic disable-next-line: undefined-field
                            local fg = hl and (hl.fg or hl.foreground)
                            return fg and { fg = string.format("#%06x", fg) } or nil
                        end
                    },
                    -- stylua: ignore
                    {
                        function() return require("noice").api.status.mode.get() end,
                        cond = function() return package.loaded["noice"] and require("noice").api.status.mode.has() end,
                        -- color = Util.ui.fg("Constant"),
                    },
                    -- stylua: ignore
                    {
                        function() return "  " .. require("dap").status() end,
                        cond = function () return package.loaded["dap"] and require("dap").status() ~= "" end,
                        -- color = Util.ui.fg("Debug"),
                    },
					{
						require("lazy.status").updates,
						cond = require("lazy.status").has_updates,
						-- color = Util.ui.fg("Special"),
					},
					{
						"diff",
						symbols = {
							added = icons.git.added,
							modified = icons.git.modified,
							removed = icons.git.removed,
						},
						source = function()
							local gitsigns = vim.b.gitsigns_status_dict
							if gitsigns then
								return {
									added = gitsigns.added,
									modified = gitsigns.changed,
									removed = gitsigns.removed,
								}
							end
						end,
					},
				},
				lualine_y = {
					{ "progress", separator = " ", padding = { left = 1, right = 0 } },
					{ "location", padding = { left = 0, right = 1 } },
				},
				lualine_z = {
					function()
						return " " .. os.date("%R")
					end,
				},
			},
			extensions = { "nvim-tree", "lazy" },
		}
	end,
}
