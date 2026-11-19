return {
	"nvim-treesitter/nvim-treesitter",
	lazy = false,
	build = ":TSUpdate",
	config = function()
		require("nvim-treesitter").install({
			"python",
			"java",
			"xml",
			"html",
			"css",
			"c",
			"php",
			"cpp",
			"javascript",
			"typescript",
			"tsx",
			"markdown",
			"json",
		})
		vim.api.nvim_create_autocmd("FileType", {
			pattern = {
				"python",
				"java",
				"xml",
				"html",
				"css",
				"php",
				"c",
				"cpp",
				"javascript",
				"javascriptreact",
				"typescript",
				"typescriptreact",
				"markdown",
				"json",
			},
			callback = function()
				vim.treesitter.start()
			end,
		})
	end,
}
