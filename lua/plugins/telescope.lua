local builtin = require("telescope.builtin")

vim.keymap.set("n", "<leader>ff", builtin.find_files, {})
vim.keymap.set("n", "<leader>fb", builtin.buffers, {})
vim.keymap.set("n", "<leader>fw", builtin.live_grep, {})
vim.keymap.set("n", "<leader>fh", builtin.help_tags, {})

-- Работа с Git
vim.keymap.set("n", "<leader>gb", builtin.git_branches, {})
vim.keymap.set("n", "<leader>gc", builtin.git_commits, {})
vim.keymap.set("n", "<leader>gs", builtin.git_status, {})

-- Выбор цветовой схемы
vim.keymap.set("n", "<leader>cs", builtin.colorscheme, {})

-- подключение telescope-undo
require("telescope").load_extension("undo")
vim.keymap.set("n", "<leader>u", ":Telescope undo<CR>", { noremap = true, silent = true })
