-- Настраиваем комбинации под разные функции
local builtin = require('telescope.builtin')

-- Работа с файлами и буфферами
vim.keymap.set('n', 'go', builtin.find_files, {})
vim.keymap.set('n', 'gb', builtin.buffers, {})
vim.keymap.set('n', 'gh', builtin.help_tags, {})

-- Работа с Git
vim.keymap.set('n', '<leader>gb', builtin.git_branches, {})
vim.keymap.set('n', '<leader>gc', builtin.git_commits, {})
vim.keymap.set('n', '<leader>gs', builtin.git_status, {})

-- Выбор цветовой схемы
vim.keymap.set('n', '<leader>cs', builtin.colorscheme, {})
