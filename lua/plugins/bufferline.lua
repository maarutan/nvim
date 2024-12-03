require('bufferline').setup {
  options = {
    numbers = "none",
    close_command = 'bdelete',
    right_mouse_command = 'bdelete!',
    left_mouse_command = 'buffer',
    middle_mouse_command = nil,
    indicator = {
      icon = " ",
      style = 'icon',
    },
    buffer_close_icon = '  ',
    modified_icon = '[+]',
    close_icon = '',
    left_trunc_marker = '',
    right_trunc_marker = '',
    max_name_length = 18,
    max_prefix_length = 15,
    tab_size = 18,
    diagnostics = false,
    offsets = {
      {
        filetype = "neo-tree",
        text = "🌊🌊🌊🌊🌊🌊🌊🌊🌊🌊🌊🌊🌊🌊🌊🌊🌊🌊🌊🌊🌊🌊🌊🌊🌊🌊🌊🌊🌊🌊🌊🌊",
        text_align = "center",
      }
    },
    show_buffer_icons = true,
    show_buffer_close_icons = true,
    show_tab_indicators = true,
    persist_buffer_sort = true,
    separator_style = "thin",
    enforce_regular_tabs = false,
    always_show_bufferline = true,
    custom_areas = {
      right = function()
        return {
          {
            text = '  ',  -- Текст для кнопки
            fg = '#ffffff',  -- Красный цвет
            bg = '#ff0000',  -- Цвет фона (настрой по вкусу)
            click = function()
              vim.cmd('bufdo bdelete')  -- Команда для закрытия всех буферов
            end
          },
        }
      end,
    },
  },
}

