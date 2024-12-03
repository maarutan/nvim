require('luasnip.loaders.from_vscode').lazy_load() -- Загрузка готовых сниппетов

local luasnip = require('luasnip')

-- <Tab> для перехода вперед или разворачивания сниппета
vim.keymap.set({ "i", "s" }, "<Tab>", function()
    if luasnip.expand_or_jumpable() then
        luasnip.expand_or_jump()
    else
        vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes("<Tab>", true, true, true), "n", true)
    end
end, { silent = true })

-- <S-Tab> для перехода назад
vim.keymap.set({ "i", "s" }, "<S-Tab>", function()
    if luasnip.jumpable(-1) then
        luasnip.jump(-1)
    else
        vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes("<S-Tab>", true, true, true), "n", true)
    end
end, { silent = true })

-- <Enter> для подтверждения выбора или вставки сниппета
vim.keymap.set("i", "<CR>", function()
    if luasnip.expand_or_jumpable() then
        luasnip.expand_or_jump()
        return ""
    else
        -- Стандартное поведение Enter (новая строка)
        return vim.api.nvim_replace_termcodes("<CR>", true, true, true)
    end
end, { silent = true, expr = true })

