local cmp = require'cmp'
local luasnip = require'luasnip'

cmp.setup({
    snippet = {
        expand = function(args)
            luasnip.lsp_expand(args.body) -- Используем LuaSnip для разворачивания сниппетов
        end,
    },

    mapping = {
        -- <Tab> для перехода вперед
        ['<Tab>'] = cmp.mapping(function(fallback)
            if cmp.visible() then
                cmp.confirm({ select = true }) -- Подтвердить подсказку
            elseif luasnip.expand_or_jumpable() then
                luasnip.expand_or_jump() -- Развернуть или перейти вперед
            else
                fallback() -- Стандартное поведение (например, табуляция)
            end
        end, { 'i', 's' }),

        -- <S-Tab> для перехода назад
        ['<S-Tab>'] = cmp.mapping(function(fallback)
            if luasnip.jumpable(-1) then
                luasnip.jump(-1) -- Вернуться назад
            else
                fallback() -- Стандартное поведение
            end
        end, { 'i', 's' }),

        -- <CR> для подтверждения выбора
        ['<CR>'] = cmp.mapping.confirm({
            behavior = cmp.ConfirmBehavior.Replace, -- Заменить текущий текст выбранным вариантом
            select = true, -- Подтверждение первого варианта при нажатии Enter
        }),

        -- Навигация по подсказкам
        ['<C-j>'] = cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Insert }),
        ['<C-k>'] = cmp.mapping.select_prev_item({ behavior = cmp.SelectBehavior.Insert }),

        -- Прокрутка документации
        ['<C-d>'] = cmp.mapping.scroll_docs(4),
        ['<C-u>'] = cmp.mapping.scroll_docs(-4),

        -- Закрытие автодополнения
        ['<C-e>'] = cmp.mapping.close(),
    },

    sources = cmp.config.sources({
        { name = 'nvim_lsp' },
        { name = 'luasnip' }, -- Источник для сниппетов
        { name = 'buffer' },
        { name = 'path' },
    }),

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

    experimental = {
        ghost_text = true,
    },

    completion = {
        autocomplete = { cmp.TriggerEvent.TextChanged, cmp.TriggerEvent.InsertEnter },
    },
})

