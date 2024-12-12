require("tokyonight").setup({
	style = "auto", -- Автоматический выбор стиля
	light_style = "day", -- Устанавливаем дневной стиль
	transparent = false, -- Прозрачность отключена
	terminal_colors = true, -- Использовать цвета терминала
	styles = {
		comments = { italic = true }, -- Курсив для комментариев
		keywords = { italic = true }, -- Курсив для ключевых слов
		functions = { bold = true }, -- Жирный для функций
		variables = {}, -- Обычный стиль для переменных
	},
	sidebars = { "qf", "help", "terminal", "packer" }, -- Прозрачность боковых панелей
	dim_inactive = false, -- Не затемнять неактивные окна
	lualine_bold = true, -- Жирный текст в lualine
})

require("circadian").setup({
	lat = 0.0, -- Укажите вашу широту
	lon = 0.0, -- Укажите вашу долготу
	day = { background = "light", colorscheme = "tokyonight_day" }, -- Корректное имя схемы
	night = { background = "dark", colorscheme = "tokyonight_night" }, -- Корректное имя схемы
})
