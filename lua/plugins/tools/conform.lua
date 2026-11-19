return {
	"stevearc/conform.nvim",
	config = function()
		require("conform").setup({
			formatters_by_ft = {
				lua = { "stylua" },
				java = { "google-java-format" },
				xml = { "xmlformatter" },
				python = { "black" },
				html = { "prettierd" },
				css = { "prettierd" },
				php = { "php_cs_fixer" },
				c = { "clang-format" },
				cpp = { "clang-format" },
				javascript = { "prettierd" },
				javascriptreact = { "prettierd" },
				typescript = { "prettierd" },
				typescriptreact = { "prettierd" },
				markdown = { "prettierd" },
				json = { "prettierd" },
			},
			--	format_on_save = {
			--		timeout_ms = 3000,
			--	},
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
