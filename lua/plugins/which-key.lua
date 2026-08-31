return {
	"folke/which-key.nvim",
	event = "VeryLazy",
	config = function()
		local wk = require("which-key")
		wk.add({
			{
				"<leader>f",
				group = "Find",
			},
            {
                "<leader>x",
                group = "Trouble diagnostics"
            },
            {
                "<leader>c",
                group = "Trouble more"
            }
		})
	end,
}
