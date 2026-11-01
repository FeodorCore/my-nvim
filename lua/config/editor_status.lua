local function show_editor_status()
	local ts_active = vim.treesitter.highlighter.active[vim.api.nvim_get_current_buf()] ~= nil
	local formatters = #require("conform").list_formatters(0) > 0
	local lsp_active = #vim.lsp.get_clients({ bufnr = 0 }) > 0

	---@param name string
	---@param status boolean
	---@return string[]
	local function make_chunk(name, status)
		local hl = status and "DiagnosticOk" or "DiagnosticError"
		return { name, hl }
	end

	local function get_clients_names()
		local client_names = {}

		for _, c in ipairs(vim.lsp.get_clients({ bufnr = 0 })) do
			table.insert(client_names, c.name)
		end
		return client_names
	end

	vim.api.nvim_echo({
		make_chunk("treesitter", ts_active),
		{ ", ", "" },
		make_chunk("conform", formatters),
		{ ", ", "" },
		make_chunk("lsp", lsp_active),
		{ " [" .. table.concat(get_clients_names(), ", ") .. "]", "DiagnosticInfo" },
	}, false, {})
end

vim.keymap.set("n", "<leader>C", show_editor_status, { desc = "Editor Status" })
