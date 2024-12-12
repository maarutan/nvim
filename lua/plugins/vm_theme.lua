local M = {}

-- Таблица для хранения всех зарегистрированных тем
M.themes = {}

-- Регистрация новой темы
function M.register_theme(name, theme_func)
	if M.themes[name] then
		vim.notify("Тема '" .. name .. "' уже существует.", vim.log.levels.WARN)
		return
	end
	M.themes[name] = theme_func
	vim.notify("Тема '" .. name .. "' успешно зарегистрирована.", vim.log.levels.INFO)
end

-- Получение темы по имени
function M.get_theme(name)
	return M.themes[name]
end

-- Пример темы "default"
M.register_theme("default", function()
	vim.api.nvim_set_hl(0, "VM_Extend", { bg = "#44475a" })
	vim.api.nvim_set_hl(0, "VM_Cursor", { bg = "#6272a4", fg = "#ffffff" })
	vim.api.nvim_set_hl(0, "VM_Insert", { bg = "#282a36", fg = "#ffffff" })
	vim.api.nvim_set_hl(0, "VM_Mono", { bg = "#bd93f9", fg = "#000000" })
end)

-- Пример темы "iceblue"
M.register_theme("iceblue", function()
	vim.api.nvim_set_hl(0, "VM_Extend", { bg = "#005f87" })
	vim.api.nvim_set_hl(0, "VM_Cursor", { bg = "#0087af", fg = "#ffffff" })
	vim.api.nvim_set_hl(0, "VM_Insert", { bg = "#4c4e50", fg = "#ffffff" })
	vim.api.nvim_set_hl(0, "VM_Mono", { bg = "#FFFFFF", fg = "#000000" })
end)

return M
