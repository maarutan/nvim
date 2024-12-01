 -- Конфигурация null-ls
            local null_ls = require("null-ls")
            null_ls.setup({
                -- Настройка источников для диагностики и форматирования
                sources = {
                    null_ls.builtins.diagnostics.flake8, -- Линтер для Python
                    null_ls.builtins.formatting.black,   -- Форматирование для Python
                },
            })
