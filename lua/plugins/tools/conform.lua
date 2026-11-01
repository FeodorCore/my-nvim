return {
	"stevearc/conform.nvim",
	config = function()
		require("conform").setup({
			formatters_by_ft = {
				lua = { "stylua" },
				java = { "google-java-format" },
				xml = { "xmlformatter" },
				python = { "black" },
				html = { "prettier" },
				css = { "prettier" },
				php = { "php_cs_fixer" },
				cpp = { "clang-format" },
				javascript = { "prettier" },
				javascriptreact = { "prettier" },
				typescript = { "prettier" },
				typescriptreact = { "prettier" },
				markdown = { "prettier" },
                json = {"prettier"}
			},
		})
		vim.api.nvim_create_autocmd("LspAttach", {
			callback = function(args)
				vim.keymap.set("n", "<leader>F", function()
					require("conform").format()
				end, { buffer = args.buf, desc = "formatting" })
			end,
		})
	end,
}
