return {
	"akinsho/toggleterm.nvim",
	version = "*",
	config = function()
		require("toggleterm").setup()
		--vim.keymap.set("n", "<leader>t", "<Cmd>ToggleTerm<CR>", { silent = true, desc = "Toggle terminal" })
		vim.keymap.set("n", "<leader>t", function()
			require("toggleterm").toggle(vim.v.count)
		end, { silent = true, desc = "Toggle terminal" })
	end,
}
