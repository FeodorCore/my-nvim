return {
	"mfussenegger/nvim-dap",
	config = function()
		local code_debug_path = vim.fn.stdpath("data") .. "/mason/bin/codelldb"
		local dap = require("dap")

		dap.adapters.codelldb = {
			type = "executable",
			command = code_debug_path,
		}
		dap.configurations.c = {
			{
				name = "Launch file",
				type = "codelldb",
				request = "launch",
				program = function()
					return vim.fn.input("Path to executable: ", vim.fn.getcwd() .. "/", "file")
				end,
				cwd = "${workspaceFolder}",
				stopOnEntry = false,
			},
		}
	end,
}
