return {
	"nvim-treesitter/nvim-treesitter",
	lazy = false,
	build = ":TSUpdate",
	config = function()
		require("nvim-treesitter").install({ "python", "java", "xml", "html", "css", "php" })
		vim.api.nvim_create_autocmd("FileType", {
			pattern = { "python", "java", "xml", "html", "css", "php"},
			callback = function()
				vim.treesitter.start()
			end,
		})
	end,
}
