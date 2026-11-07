local M = {}

local state = require("mason-batch.state")
local commands = require("mason-batch.commands")

local defaults = {
	formatter = {},
	lsp = {},
	linter = {},
	dap = {},
}

---@param opts { formatter?: string[], lsp?: string[], dap?: string[]}
function M.setup(opts)
	state.config = vim.tbl_deep_extend("force", defaults, opts)
	--vim.print(state.config)
end

function M.config()
	return state.config
end

return M
