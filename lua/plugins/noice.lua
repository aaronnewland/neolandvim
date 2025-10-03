return {
	"folke/noice.nvim",
	event = "VeryLazy",
	dependencies = {
		-- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
		"MunifTanjim/nui.nvim",
		-- OPTIONAL:
		--   `nvim-notify` is only needed, if you want to use the notification view.
		--   If not available, we use `mini` as the fallback
		"rcarriga/nvim-notify",
	},
	opts = {
		lsp = {
			signature = {
				auto_open = {
					trigger = false, -- Automatically show signature help when typing a trigger character from the LSP
				},
			},
			override = {
				["vim.lsp.util.convert_input_to_markdown_lines"] = true,
				["vim.lsp.util.stylize_markdown"] = true,
				["cmp.entry.get_documentation"] = true,
			},
		},
		routes = {
			{
				filter = {
					event = "msg_show",
					any = {
						{ find = "%d+L, %d+B" },
						{ find = "; after #%d+" },
						{ find = "; before #%d+" },
					},
				},
				view = "mini",
			},
			-- Prevents an error where a message would show "No information available"
			-- on LSP hover that did have information.
			{
				filter = {
					event = "notify",
					find = "No information available",
				},
				opts = {
					skip = true,
				},
			},
		},
		presets = {
			bottom_search = false,
			command_palette = true,
			long_message_to_split = true,
			inc_rename = true,
		},
	},
    -- stylua: ignore
    keys = {
        { "<S-Enter>", function() require("noice").redirect(vim.fn.getcmdline()) end, mode = "c", desc = "Redirect Cmdline" },
        { "<leader>nl", function() require("noice").cmd("last") end, desc = "[n]oice [l]ast message" },
        { "<leader>nh", function() require("noice").cmd("history") end, desc = "[n]oice [h]istory" },
        { "<leader>na", function() require("noice").cmd("all") end, desc = "[n]oice [a]ll" },
        { "<leader>nd", function() require("noice").cmd("dismiss") end, desc = "[n]oice [d]ismiss all" },
        { "<c-f>", function() if not require("noice.lsp").scroll(4) then return "<c-f>" end end, silent = true, expr = true, desc = "scroll forward", mode = {"i", "n", "s"} },
        { "<c-b>", function() if not require("noice.lsp").scroll(-4) then return "<c-b>" end end, silent = true, expr = true, desc = "scroll backward", mode = {"i", "n", "s"}},
    },
}
