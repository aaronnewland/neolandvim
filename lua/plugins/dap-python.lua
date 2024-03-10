return {
	"mfussenegger/nvim-dap-python",
	ft = "python",
	dependencies = {
		"mfussenegger/nvim-dap",
		"rcarriga/nvim-dap-ui",
	},
	config = function()
		local path = "~/.local/share/nvim/mason/packages/debugpy/bin/python"
		require("dap-python").setup(path)
	end,
}
