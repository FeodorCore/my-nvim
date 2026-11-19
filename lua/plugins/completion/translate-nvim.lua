return {
	"uga-rosa/translate.nvim",
	config = function()
		require("translate").setup({
			default = {
				command = "translate_shell", -- or "google" "deepl_free", "deepl_pro", "translate_shell"
			},

			-- floating
			vim.keymap.set("n", "<leader>tfr", "<Cmd>Translate ru<CR>", { desc = "Translate into Russian" }),
			vim.keymap.set("x", "<leader>tfr", "<Cmd>Translate ru<CR>", { desc = "Translate into Russian" }),

			vim.keymap.set("n", "<leader>tfe", "<Cmd>Translate en<CR>", { desc = "Translate into English" }),
			vim.keymap.set("x", "<leader>tfe", "<Cmd>Translate en<CR>", { desc = "Translate into English" }),

			-- replace
			vim.keymap.set(
				"n",
				"<leader>trr",
				"<Cmd>Translate ru -output=replace<CR>",
				{ desc = "Translate into Russian" }
			),
			vim.keymap.set(
				"x",
				"<leader>trr",
				"<Cmd>Translate ru -output=replace<CR>",
				{ desc = "Translate into Russian" }
			),

			vim.keymap.set(
				"n",
				"<leader>tre",
				"<Cmd>Translate en -output=replace<CR>",
				{ desc = "Translate into English" }
			),
			vim.keymap.set(
				"x",
				"<leader>tre",
				"<Cmd>Translate en -output=replace<CR>",
				{ desc = "Translate into English" }
			),

			-- insert
			vim.keymap.set(
				"n",
				"<leader>tir",
				"<Cmd>Translate ru -output=insert<CR>",
				{ desc = "Translate into Russian" }
			),
			vim.keymap.set(
				"x",
				"<leader>tir",
				"<Cmd>Translate ru -output=insert<CR>",
				{ desc = "Translate into Russian" }
			),

			vim.keymap.set(
				"n",
				"<leader>tie",
				"<Cmd>Translate en -output=insert<CR>",
				{ desc = "Translate into English" }
			),
			vim.keymap.set(
				"x",
				"<leader>tie",
				"<Cmd>Translate en -output=insert<CR>",
				{ desc = "Translate into English" }
			),

			--register
			vim.keymap.set(
				"n",
				"<leader>tyr",
				"<Cmd>Translate ru -output=register<CR>",
				{ desc = "Translate into Russian" }
			),
			vim.keymap.set(
				"x",
				"<leader>tyr",
				"<Cmd>Translate ru -output=register<CR>",
				{ desc = "Translate into Russian" }
			),

			vim.keymap.set(
				"n",
				"<leader>tye",
				"<Cmd>Translate en -output=register<CR>",
				{ desc = "Translate into English" }
			),
			vim.keymap.set(
				"x",
				"<leader>tye",
				"<Cmd>Translate en -output=register<CR>",
				{ desc = "Translate into English" }
			),
		})
	end,
}
