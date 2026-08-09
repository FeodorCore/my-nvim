return {
	"nvim-treesitter/nvim-treesitter",
	lazy = false,
	build = ":TSUpdate",
	config = function()
		require("nvim-treesitter").install({ "python", "java", "xml", "html", "css" })
		vim.api.nvim_create_autocmd("FileType", {
			pattern = { "python", "java", "xml", "html", "css"},
			callback = function()
				vim.treesitter.start()
			end,
		})
	end,
}
