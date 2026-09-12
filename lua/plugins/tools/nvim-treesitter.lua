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
			"php",
			"cpp",
			"javascript",
			"typescript",
		})
		vim.api.nvim_create_autocmd("FileType", {
			pattern = { "python", "java", "xml", "html", "css", "php", "cpp", "javascript", "typescript" },
			callback = function()
				vim.treesitter.start()
			end,
		})
	end,
}
