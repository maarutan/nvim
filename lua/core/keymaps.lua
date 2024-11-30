-- leader key 
vim.g.mapleader = " "

-- normal mode saves 
vim.keymap.set("n",  "<leader>w",  ":w<CR>",       { noremap = true, silent = true})
vim.keymap.set("n",  "<C-s>",      ":w<CR>",       { noremap = true, silent = true})
vim.keymap.set("n",  "<C-Return>", ":w<CR>", 	   { noremap = true, silent = true})
 
-- insert mode saves 
vim.keymap.set("i",  "<C-s>",      "<cmd>:w<CR>", { noremap = true, silent = true})
vim.keymap.set("i",  "<C-Return>", "<cmd>:w<CR>", { noremap = true, silent = true})

-- esc 
vim.keymap.set("i",  "jk",         "<Esc>",        { noremap = true, silent = true})

-- neotree normal
vim.keymap.set("n", "<leader>e", ":Neotree toggle<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<A-e>", "<cmd>:Neotree toggle<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>f", ":Neotree focus<CR>" , { noremap = true, silent = true })
vim.keymap.set("n", "<A-S-e>", "<cmd>:Neotree focus filesystem<CR>" , { noremap = true, silent = true })
vim.keymap.set("n", "<A-S-f>", "<cmd>:Neotree focus<CR>" , { noremap = true, silent = true })

vim.keymap.set("i", "<A-e>", "<cmd>:Neotree toggle<CR>", { noremap = true, silent = true })
vim.keymap.set("i", "<A-S-e>", "<cmd>:Neotree focus filesystem<CR>" , { noremap = true, silent = true })
vim.keymap.set("i", "<A-S-f>", "<cmd>:Neotree focus<CR>" , { noremap = true, silent = true })

-- Переключение фокуса между окнами
vim.api.nvim_set_keymap("n", "<C-h>", "<C-w>h", { noremap = true, silent = true })  -- Фокус на левое окно
vim.api.nvim_set_keymap("n", "<C-j>", "<C-w>j", { noremap = true, silent = true })  -- Фокус на нижнее окно
vim.api.nvim_set_keymap("n", "<C-k>", "<C-w>k", { noremap = true, silent = true })  -- Фокус на верхнее окно
vim.api.nvim_set_keymap("n", "<C-l>", "<C-w>l", { noremap = true, silent = true })  -- Фокус на правое окно

-- Горячая клавиша для вертикального разделения окна: <A-S-w>
vim.api.nvim_set_keymap('n', '<A-S-w>', ':vsplit<CR>', { noremap = true, silent = true })
-- Горячая клавиша для закрытия окна: <C-w>
vim.api.nvim_set_keymap('n', '<C-w>', ':q!<CR>, <Return>', { noremap = true, silent = true })

-- Горячие клавиши для изменения размера окна
vim.api.nvim_set_keymap('n', '<A-S-h>',  ':vertical resize -5<CR>', { noremap = true, silent = true }) -- Уменьшить ширину окна
vim.api.nvim_set_keymap('n', '<A-S-l>', ':vertical resize +5<CR>', { noremap = true, silent = true }) -- Увеличить ширину окна
vim.api.nvim_set_keymap('n', '<A-S-k>',    ':resize -5<CR>', { noremap = true, silent = true })         -- Уменьшить высоту окна
vim.api.nvim_set_keymap('n', '<A-S-j>',  ':resize +5<CR>', { noremap = true, silent = true })         -- Увеличить высоту окна


-- Перемещение строки вверх ввниз
vim.api.nvim_set_keymap('n', '<A-k>', ':m .-2<CR>==', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<A-j>', ':m .+1<CR>==', { noremap = true, silent = true })

-- Перемещение между окнами с Alt + h и Alt + l
vim.api.nvim_set_keymap('n', '<A-h>', '<C-w>h', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<A-l>', '<C-w>l', { noremap = true, silent = true })





