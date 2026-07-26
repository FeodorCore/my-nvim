return {
	"nvim-treesitter/nvim-treesitter",
	lazy = false,
	build = ":TSUpdate",

	config = function()
		require("nvim-treesitter").install({ "lua", "python", "java", "xml", "html", "css", "javascript", "typescript", "go" })

		vim.api.nvim_create_autocmd("FileType", {
			pattern = { "lua",  "python", "java", "xml", "html", "css", "javascript", "typescript", "go"},
			callback = function()
				vim.treesitter.start()
			end,
		})
	end,
    enabled = true
}
