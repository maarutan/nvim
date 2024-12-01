-- cmp_config.lua
local cmp = require'cmp'

cmp.setup({
    snippet = {
        expand = function(args)
            require('luasnip').snippet_expand(args.body)  -- если используешь luasnip
        end,
    },

    mapping = {
        -- Toggle автодополнения с помощью C-space
        ['<C-space>'] = cmp.mapping(function(fallback)
            if cmp.visible() then
                cmp.close()  -- Закрыть подсказки, если они видимы
            else
                cmp.complete()  -- Открыть автодополнение
            end
        end),

        -- Переключение на документацию с C-S-i
        ['<C-S-i>'] = cmp.mapping(function(fallback)
            if cmp.visible() then
                cmp.close()  -- Закрыть автодополнение, если оно открыто
            else
                vim.lsp.buf.hover()  -- Включить документацию
            end
        end, { 'i', 's' }),

        -- Навигация по подсказкам (C-j / C-k)
        ['<C-j>'] = cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Insert }),
        ['<C-k>'] = cmp.mapping.select_prev_item({ behavior = cmp.SelectBehavior.Insert }),

        -- Прокрутка документации с помощью jk
        ['<C-d>'] = cmp.mapping.scroll_docs(4),  -- Прокрутка вниз
        ['<C-u>'] = cmp.mapping.scroll_docs(-4), -- Прокрутка вверх

        -- Подтверждение выбора
        ['<C-l>'] = cmp.mapping.confirm({ select = true }),  -- Выбор через C-l
        ['<Tab>'] = cmp.mapping.confirm({ select = true }),  -- Выбор через Tab

        -- Закрытие автодополнения
        ['<C-e>'] = cmp.mapping.close(),
    },

    -- Источники данных для автодополнения
    sources = {
        { name = 'nvim_lsp' },        -- Источник для LSP (Language Server Protocol)
        { name = 'buffer' },          -- Источник для автодополнения из текущего буфера
        { name = 'path' },            -- Источник для автодополнения путей файлов
        { name = 'luasnip' },         -- Источник для Snippets (если используешь snippets)
        { name = 'nvim_lua' },        -- Источник для автодополнения Lua API
    },

    -- Настройки отображения подсказок
    formatting = {
        format = function(entry, vim_item)
            vim_item.menu = ({
                nvim_lsp = "[LSP]",
                buffer = "[Buffer]",
                path = "[Path]",
                luasnip = "[Snippet]",
                nvim_lua = "[Lua]",
            })[entry.source.name]
            return vim_item
        end
    },

    -- Дополнительные настройки для поведенческой кастомизации
    experimental = {
        ghost_text = true,  -- Включить "ghost text" (подсказка до выбора)
    },

    -- Автоматическая активация подсказок
    preselect = cmp.PreselectMode.None,  -- Отключить автоматический выбор при активации подсказки
    completion = {
        autocomplete = { cmp.TriggerEvent.TextChanged, cmp.TriggerEvent.InsertEnter },  -- Активировать подсказки при вводе
    },
})
