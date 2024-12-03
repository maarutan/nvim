require("ibl").setup({
    indent = {
        char = "│",
    },
    scope = {
        enabled = false,
    },
    exclude = {
        filetypes = { "dashboard" },
    },
})


require("mini.indentscope").setup({
  -- Настройки отображения
  draw = {
    -- Задержка (в мс) перед началом отрисовки индикатора
    delay = 100,

    -- Плавная анимация
    animation = require("mini.indentscope").gen_animation.linear({
      easing = "in-out",  -- Используем корректное значение easing
      duration = 15,     -- Продолжительность анимации в мс
      unit = "step",      -- Шаг анимации
    }),

    -- Приоритет символа
    priority = 2,
  },

  -- Горячие клавиши
  mappings = {
    object_scope = 'ii',
    object_scope_with_border = 'ai',
    goto_top = '[i',
    goto_bottom = ']i',
  },

  -- Опции для вычисления области
  options = {
    border = 'both',
    indent_at_cursor = true,
    try_as_border = false,
  },

  -- Символ для отображения индикатора
  symbol = "│",
})


require("mini.indentscope").setup({
  -- Настройки отображения
  draw = {
    -- Задержка (в мс) перед началом отрисовки индикатора
    delay = 100,

    -- Плавная анимация
    animation = require("mini.indentscope").gen_animation.linear({
      easing = "in-out",  -- Используем корректное значение easing
      duration = 15,     -- Продолжительность анимации в мс
      unit = "step",      -- Шаг анимации
    }),

    -- Приоритет символа
    priority = 2,
  },

  -- Горячие клавиши
  mappings = {
    object_scope = 'ii',
    object_scope_with_border = 'ai',
    goto_top = '[i',
    goto_bottom = ']i',
  },

  -- Опции для вычисления области
  options = {
    border = 'both',
    indent_at_cursor = true,
    try_as_border = false,
  },

  -- Символ для отображения индикатора
  symbol = "│",
})
