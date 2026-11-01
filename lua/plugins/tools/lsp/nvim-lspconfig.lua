return {
	{
		"mason-org/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = {
					"lua_ls",

					"basedpyright",

					"jdtls",
					"lemminx",

					"clangd",

					"html",
					"emmet_language_server",
					"cssls",
					"vtsls",
					"jsonls",

					"phpantom_lsp",

					"markdown_oxide",

					"ltex_plus",
					"harper_ls",
					"typos_lsp",
				},
				automatic_enable = false,
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			--		local capabilities = require("cmp_nvim_lsp").default_capabilities()
			--		vim.lsp.config("*", { capabilities = capabilities })

			vim.api.nvim_create_autocmd("LspAttach", {
				callback = function(args)
					local client = vim.lsp.get_client_by_id(args.data.client_id)
					if client then
						client.server_capabilities.semanticTokensProvider = nil
					end
				end,
			})

			vim.lsp.enable("lua_ls")

			vim.lsp.enable("basedpyright")

			vim.lsp.enable("jdtls")
			vim.lsp.enable("lemminx")

			vim.lsp.enable("clangd")

			vim.lsp.enable("html")
			vim.lsp.enable("emmet_language_server")
			vim.lsp.enable("cssls")
			vim.lsp.enable("vtsls")
			vim.lsp.enable("jsonls")

			vim.lsp.enable("phpantom_lsp")

			vim.lsp.enable("markdown_oxide")

			vim.lsp.enable("ltex_plus")
			vim.lsp.enable("harper_ls")
			vim.lsp.enable("typos_lsp")
		end,
	},
}
