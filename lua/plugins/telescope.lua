local telescope = require("telescope")
local builtin = require("telescope.builtin")

-- Основные привязки
vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Найти файлы" })
vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "Открыть буферы" })
vim.keymap.set("n", "<leader>fw", builtin.live_grep, { desc = "Поиск текста" })
vim.keymap.set("n", "<leader>fh", builtin.help_tags, { desc = "Справка" })

local builtin = require("telescope.builtin")

-- Функция для проверки наличия .git
local function check_git_and_run(callback)
	if vim.fn.isdirectory(".git") == 1 then
		callback()
	else
		vim.notify("У вас нет репозитория", vim.log.levels.WARN, {
			title = "Git",
			icon = "󰊢",
		})
	end
end

-- Настройка команд Git
vim.keymap.set("n", "<leader>gb", function()
	check_git_and_run(builtin.git_branches)
end, { desc = "Гит ветки" })

vim.keymap.set("n", "<leader>gc", function()
	check_git_and_run(builtin.git_commits)
end, { desc = "Гит коммиты" })

vim.keymap.set("n", "<leader>gs", function()
	check_git_and_run(builtin.git_status)
end, { desc = "Гит статус" })
-- Выбор цветовой схемы
vim.keymap.set("n", "<leader>cs", builtin.colorscheme, { desc = "Выбор цветовой схемы" })

-- Подключение undo
vim.keymap.set("n", "<leader>u", "<cmd>Telescope undo<CR>", { desc = "Открыть дерево undo" })

-- Подключение notify
require("telescope").load_extension("notify")
vim.keymap.set("n", "<leader>fn", "<cmd>Telescope notify<CR>", { desc = "История уведомлений" })

-- Подключение file_browser
require("telescope").setup({
	defaults = {
		file_ignore_patterns = {
			"%.png",
			"%.jpg",
			"%.jpeg",
			"%.gif",
			"%.bmp",
			"%.svg",
			"%.webp",
			"%.mp4",
			"%.mkv",
			"%.avi",
			"%.mov",
			"%.flv",
			"%.wmv",
			"%.webm",
			"%.m4v",
		},
	},
	extensions = {
		undo = {
			side_by_side = true,
			layout_strategy = "vertical",
			layout_config = { preview_height = 0.8 },
			use_delta = true,
			mappings = {
				i = {
					["<CR>"] = require("telescope-undo.actions").yank_additions,
					["<S-CR>"] = require("telescope-undo.actions").yank_deletions,
				},
				n = {
					["<CR>"] = require("telescope-undo.actions").restore,
					["<S-CR>"] = require("telescope-undo.actions").yank_deletions,
				},
			},
		},
	},
})

require("telescope").load_extension("file_browser")

local function open_file_browser()
	telescope.extensions.file_browser.file_browser({
		prompt_title = "Select Directory",
		cwd = "~",
		attach_mappings = function(_, map)
			local actions = require("telescope.actions")
			local action_state = require("telescope.actions.state")
			map("i", "<CR>", function(prompt_bufnr)
				local selected_path = action_state.get_selected_entry().path
				actions.close(prompt_bufnr)
				vim.cmd("cd " .. selected_path)
				vim.cmd("edit .")
			end)
			return true
		end,
	})
end

vim.keymap.set("n", "<leader>wd", open_file_browser, { desc = "Открыть file_browser" })
