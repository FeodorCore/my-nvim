return {
	"stevearc/conform.nvim",
	config = function()
		require("conform").setup({
			formatters_by_ft = {
				lua = { "stylua" },
				java = { "google-java-format" },
				xml = { "xmlformatter" },
				json = { "jq" },
				python = { "black" },
				html = { "prettier" },
				css = { "prettier" },
				javascript = { "prettier" },
				typescript = { "prettier" },
				go = { "gofumpt" },
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
