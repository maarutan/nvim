 require('bufferline').setup {
      options = {
        numbers = "none",  -- Отключение номеров буферов
        close_command = 'bdelete',  -- Команда для закрытия буфера
        right_mouse_command = 'bdelete!',  -- Команда для закрытия буфера правой кнопкой мыши
        left_mouse_command = 'buffer',  -- Переключение на буфер при клике левой кнопкой
        middle_mouse_command = nil,  -- Отключение действий средней кнопки
        indicator = {
          icon = " ",  -- Индикатор активного буфера
          style = 'icon'  -- Стиль индикатора
        },
        buffer_close_icon = ' ⨯ ',  -- Иконка для закрытия буфера
        modified_icon = '[+]',  -- Иконка для измененного буфера
        close_icon = '',  -- Иконка для закрытия
        left_trunc_marker = '',  -- Маркер для обрезки слева
        right_trunc_marker = '',  -- Маркер для обрезки справа
        max_name_length = 18,  -- Максимальная длина имени буфера
        max_prefix_length = 15,  -- Максимальная длина префикса имени
        tab_size = 18,  -- Размер вкладки
        diagnostics = false,  -- Отключение диагностики на вкладках
        offsets = {  -- Отступы для интеграции с панелями (например, nvim-tree)
          {
            filetype = "NvimTree",  -- Отступ для файлового менеджера
            text = "File Explorer",  -- Текст для панели
            text_align = "center",  -- Выравнивание текста по центру
          }
        },
        show_buffer_icons = true,  -- Показ иконок для файлов
        show_buffer_close_icons = true,  -- Показ иконки для закрытия буфера
        show_tab_indicators = true,  -- Отображение индикаторов вкладок
        persist_buffer_sort = true,  -- Сохранение порядка буферов
        separator_style = "thin",  -- Стиль разделителей
        enforce_regular_tabs = false,  -- Разрешить разные размеры вкладок
        always_show_bufferline = true,  -- Всегда показывать строку буферов
      }
    }
