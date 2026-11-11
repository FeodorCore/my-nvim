return {
	--dir = vim.fn.expand("~/Projects/work/mason-batch.nvim/"),
	dir = vim.fn.expand("~/.config/nvim/lua/config/mason-batch.nvim/"),
	name = "mason-batch.nvim",
	opts = {
		formatter = {
			"stylua",

			"black",

			"google-java-format",
			"xmlformatter",

			--"prettier",
			"prettierd",
			"php-cs-fixer",
			"clang-format",
		},
		lsp = {
			"lua-language-server",

			"basedpyright",

			"jdtls",
			"lemminx",

			"clangd",

			"html-lsp",
			"emmet-language-server",
			"css-lsp",
			"vtsls",
			"json-lsp",

			"phpantom_lsp",

			"markdown-oxide",

			"ltex-ls-plus",
			"harper-ls",
			"typos-lsp",
		},
	},
}
