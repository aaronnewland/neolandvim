local M = {}
M.theme = function()
	local colors = {
		darkgray = "#16161d",
		gray = "#727169",
		file = "#a9b1d5",
		innerbg = nil,
		outerbg = "#3a4260",
		normal = "#7aa1f6",
		insert = "#9ece6a",
		visual = "#bb9af7",
		replace = "#f7768e",
		command = "#e1af67",
	}
	return {
		inactive = {
			a = { fg = colors.gray, bg = colors.outerbg, gui = "bold" },
			b = { fg = colors.gray, bg = colors.outerbg },
			c = { fg = colors.gray, bg = colors.innerbg },
		},
		visual = {
			a = { fg = colors.darkgray, bg = colors.visual },
			b = { fg = colors.visual, bg = colors.outerbg },
			c = { fg = colors.file, bg = colors.innerbg },
		},
		replace = {
			a = { fg = colors.darkgray, bg = colors.replace },
			b = { fg = colors.replace, bg = colors.outerbg },
			c = { fg = colors.file, bg = colors.innerbg },
		},
		normal = {
			a = { fg = colors.darkgray, bg = colors.normal },
			b = { fg = colors.normal, bg = colors.outerbg },
			c = { fg = colors.file, bg = colors.innerbg },
		},
		insert = {
			a = { fg = colors.darkgray, bg = colors.insert },
			b = { fg = colors.insert, bg = colors.outerbg },
			c = { fg = colors.file, bg = colors.innerbg },
		},
		command = {
			a = { fg = colors.darkgray, bg = colors.command },
			b = { fg = colors.command, bg = colors.outerbg },
			c = { fg = colors.file, bg = colors.innerbg },
		},
	}
end
return M
