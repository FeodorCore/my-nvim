return {
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
			vim.lsp.enable("tombi")
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
			vim.lsp.enable("codebook")
		end,
	},
}
