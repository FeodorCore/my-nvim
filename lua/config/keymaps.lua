vim.keymap.set("n", "<leader>h", function()
	local current_state = vim.lsp.inlay_hint.is_enabled()
	vim.lsp.inlay_hint.enable(not current_state)
end, { desc = "LSP: Toggle Global Inlay Hints" })
-- moving
vim.keymap.set("n", "<C-h>", "<C-w>h", { silent = true, desc = "Go to left window" })
vim.keymap.set("n", "<C-l>", "<C-w>l", { silent = true, desc = "Go to right window" })
vim.keymap.set("n", "<C-j>", "<C-w>j", { silent = true, desc = "Go to down window" })
vim.keymap.set("n", "<C-k>", "<C-w>k", { silent = true, desc = "Go to up window" })

vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>", { desc = "Clear search highlight" })
