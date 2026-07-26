-- moving
vim.keymap.set("n", "<C-h>", "<C-w>h", { silent = true, desc = "Go to left window" })
vim.keymap.set("n", "<C-l>", "<C-w>l", { silent = true, desc = "Go to right window" })
vim.keymap.set("n", "<C-j>", "<C-w>j", { silent = true, desc = "Go to down window" })
vim.keymap.set("n", "<C-k>", "<C-w>k", { silent = true, desc = "Go to up window" })

vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>", { desc = "Clear search highlight" })

vim.keymap.set(
	"n",
	"<Tab>",
	"<Cmd>BufferLineCycleNext<CR>",
	{ desc = "Go to next buffer" }
)
vim.keymap.set(
	"n",
	"<S-Tab>",
	"<Cmd>BufferLineCyclePrev<CR>",
	{ desc = "Go to prev buffer" }
)
