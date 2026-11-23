return {
	"mfussenegger/nvim-jdtls",
	ft = "java",
	config = function()
		local lombok_path = vim.fn.expand("$HOME/.local/share/nvim/mason/share/jdtls/lombok.jar")

		local mason_registry = require("mason-registry")
		local code_debug_pkg = mason_registry.get_package("java-debug-adapter")
		local code_debug_path = code_debug_pkg:get_install_path()

		local bundles = {
			vim.fn.glob(code_debug_path .. "/extension/server/com.microsoft.java.debug.plugin-*.jar", true),
		}

		vim.lsp.config("jdtls", {
			cmd = {
				"jdtls",
				"--jvm-arg=-javaagent:" .. lombok_path,
			},
			init_options = {
				bundles = bundles,
			},
		})
	end,
}
