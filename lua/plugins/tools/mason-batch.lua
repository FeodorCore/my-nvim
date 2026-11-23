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

			"prettierd",
			"php-cs-fixer",
			"clang-format",
		},
		lsp = {
			"lua-language-server",

			"basedpyright",
            "tombi",

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
			"codebook",
		},
		dap = {
			"codelldb",
		},
	},
}
