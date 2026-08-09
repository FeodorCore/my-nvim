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
					"html",
					"cssls",
				},
				automatic_enable = false,
			})
		end,
	},
    {
	"neovim/nvim-lspconfig",
	config = function()
		local capabilities = require("cmp_nvim_lsp").default_capabilities()

		vim.api.nvim_create_autocmd("LspAttach", {
			callback = function(args)
				local client = vim.lsp.get_client_by_id(args.data.client_id)
				if client then
					client.server_capabilities.semanticTokensProvider = nil
				end
			end,
		})

		vim.lsp.config("*", { capabilities = capabilities })

		vim.lsp.enable("lua_ls")

		local lombok_path = vim.fn.expand("$HOME/.local/share/nvim/mason/share/jdtls/lombok.jar")
		vim.lsp.config("jdtls", {
			cmd = {
				"jdtls",
				"--jvm-arg=-javaagent:" .. lombok_path,
			},
		})

		vim.lsp.enable("jdtls")

		vim.lsp.enable("basedpyright")

		vim.lsp.enable("lemminx")

		vim.lsp.enable("html")

		vim.lsp.enable("cssls")
	end,
}}
