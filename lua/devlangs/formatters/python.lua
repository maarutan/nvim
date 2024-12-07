local null_ls = require("null-ls")

return {
    null_ls.builtins.formatting.black,    -- Форматирование Python
    null_ls.builtins.diagnostics.flake8,  -- Линтер для Python
}
