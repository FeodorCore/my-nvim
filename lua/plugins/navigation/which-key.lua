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
				group = "Trouble diagnostics",
			},
			{
				"<leader>c",
				group = "Trouble more",
			},
			{
				"<leader>d",
				group = "Debug",
			},
			{
				"<leader>v",
				group = "View",
			},
			{ "<leader>t", group = "translator", mode = { "n", "v" } },
			{ "<leader>tf", group = "floating", mode = { "n", "v" } },
			{ "<leader>tr", group = "replace", mode = { "n", "v" } },
			{ "<leader>ti", group = "insert", mode = { "n", "v" } },
			{ "<leader>ty", group = "register", mode = { "n", "v" } },
		})
	end,
}
