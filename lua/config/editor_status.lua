local function show_editor_status()
	local ts_active = vim.treesitter.highlighter.active[vim.api.nvim_get_current_buf()] ~= nil
	local formatters = #require("conform").list_formatters(0) > 0
	local lsp_active = #vim.lsp.get_clients({ bufnr = 0 }) > 0

	local msg = string.format(
		"treesitter = %s, conform = %s, lsp = %s",
		tostring(ts_active),
		tostring(formatters),
		tostring(lsp_active)
	)

	vim.api.nvim_echo({ { msg } }, false, {})
end

vim.keymap.set("n", "<leader>C", show_editor_status, { desc = "Editor Status" })
