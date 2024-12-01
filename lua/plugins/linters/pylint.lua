-- lua/plugins/linters/pylint.lua
vim.g.ale_linters = {
    python = { 'pylint' },
}
vim.g.ale_fix_on_save = 1  -- Автоформатирование при сохранении

