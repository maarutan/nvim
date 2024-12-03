local M = {}

M.setup = function()
  require("mini.indentscope").setup({
    symbol = "│", -- Символ для отображения отступа
    options = { try_as_border = true }, -- Использовать символ как границу
  })

  -- Отключение для определённых типов файлов
  vim.api.nvim_create_autocmd("FileType", {
    pattern = {
      "help",
      "alpha",
      "dashboard",
      "neo-tree",
      "Trouble",
      "lazy",
      "mason",
      "notify",
      "toggleterm",
      "lazyterm",
    },
    callback = function()
      vim.b.miniindentscope_disable = true
    end,
  })

  -- Настраиваем подсветку символов
  vim.api.nvim_set_hl(0, "MiniIndentscopeSymbol", { fg = "#FF5733", nocombine = true })

  -- Отключение анимации, если нужно
  vim.g.miniindentscope_disable_animation = false -- true, если хочешь отключить
end

return M

require("config.indentscope").setup()

