vim.opt.clipboard = "unnamedplus" -- Use the system clipboard

-- Numbering
vim.opt.number = true
vim.opt.relativenumber = true

-- Visual
vim.opt.termguicolors = true -- enable 24-bit colors (for themes)

vim.opt.showmode = false -- do not show --INSERT--

-- Tabs and indentation
vim.opt.tabstop = 4 -- tab width in spaces
vim.opt.shiftwidth = 4 -- indent size for << / >>
vim.opt.expandtab = true -- use spaces instead of tabs
vim.opt.autoindent = true -- automatic indent when starting a new line

-- Search
vim.opt.ignorecase = true -- ignore case when searching
vim.opt.smartcase = true -- if uppercase is present, search case-sensitively
vim.opt.hlsearch = true -- highlight matches
vim.opt.incsearch = true -- incremental search as you type

-- Scrolling and display
vim.opt.scrolloff = 8 -- minimum number of lines above/below when scrolling
vim.opt.sidescrolloff = 8 -- same horizontally
vim.opt.wrap = false -- do not wrap long lines (can keep true if you like)
