-- Общий буфер обмена
vim.opt.clipboard = "unnamedplus"

-- Нумерация
vim.opt.number = true
vim.opt.relativenumber = true

-- Визуал
vim.opt.termguicolors = true -- включает 24-битные цвета (для тем)
vim.opt.showmode = false -- не показывать --INSERT-- (нижняя строка и так показывает)

-- Табуляция и отступы
vim.opt.tabstop = 4 -- ширина табуляции в символах
vim.opt.shiftwidth = 4 -- размер отступа при << / >>
vim.opt.expandtab = true -- использовать пробелы вместо табуляции
vim.opt.autoindent = true -- автоматический отступ при переходе на новую строку

-- Поиск
vim.opt.ignorecase = true -- игнорировать регистр при поиске
vim.opt.smartcase = true -- если есть заглавные — искать с учётом регистра
vim.opt.hlsearch = true -- подсвечивать найденное
vim.opt.incsearch = true -- поиск по мере ввода

-- Скроллинг и отображение
vim.opt.scrolloff = 8 -- минимальное число строк сверху/снизу при скролле
vim.opt.sidescrolloff = 8 -- то же по горизонтали
vim.opt.wrap = false -- не переносить длинные строки (можно оставить true, если нравится)

