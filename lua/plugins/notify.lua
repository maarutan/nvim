require("notify").setup({
  stages = "fade_in_slide_out",  -- Этапы анимации
  timeout = 1000,                -- Время отображения уведомления (в миллисекундах)
  minimum_width = 20,            -- Минимальная ширина уведомления
  max_width = 50,                -- Максимальная ширина уведомления
  max_height = 8,                -- Максимальная высота уведомления
  icons = {
    ERROR = "",                 -- Иконка для ошибок
    WARN = "",                  -- Иконка для предупреждений
    INFO = "",                  -- Иконка для информации
    DEBUG = "",                 -- Иконка для отладочных сообщений
    TRACE = "✎"                  -- Иконка для трассировки
  },
  level = vim.log.levels.WARN,   -- Показывать только ERROR и WARN
})

-- Переопределяем vim.notify для использования nvim-notify
vim.notify = require("notify")
