require('smoothcursor').setup({
    type = "matrix",           -- Cursor movement calculation method, choose "default", "exp" (exponential) or "matrix".

    cursor = "",              -- Cursor shape (requires Nerd Font). Disabled in fancy mode.
    texthl = "SmoothCursor",   -- Highlight group. Default is { bg = nil, fg = "#FFD400" }. Disabled in fancy mode.
    linehl = nil,              -- Highlights the line under the cursor, similar to 'cursorline'. "CursorLine" is recommended. Disabled in fancy mode.

    fancy = {
        enable = false,        -- enable fancy mode
        head = { cursor = "▷", texthl = "SmoothCursor", linehl = nil }, -- false to disable fancy head
        body = {
            { cursor = "󰝥", texthl = "SmoothCursorRed" },
            { cursor = "󰝥", texthl = "SmoothCursorOrange" },
            { cursor = "●", texthl = "SmoothCursorYellow" },
            { cursor = "●", texthl = "SmoothCursorGreen" },
            { cursor = "•", texthl = "SmoothCursorAqua" },
            { cursor = ".", texthl = "SmoothCursorBlue" },
            { cursor = ".", texthl = "SmoothCursorPurple" },
        },
        tail = { cursor = nil, texthl = "SmoothCursor" } -- false to disable fancy tail
    },

    matrix = {  -- Loaded when 'type' is set to "matrix"
        head = {
            -- Adding space before each matrix character
            cursor = table.concat(vim.tbl_map(function(c) return " " .. c end, require('smoothcursor.matrix_chars'))),  -- Add space before each character
            texthl = { 'SmoothCursor' },
            linehl = nil,  -- No line highlight for the head
        },
        body = {
            length = 6,  -- Specifies the length of the cursor body
            -- Adding space before each matrix character
            cursor = table.concat(vim.tbl_map(function(c) return " " .. c end, require('smoothcursor.matrix_chars'))),  -- Add space before each character
            texthl = { 'SmoothCursorGreen' },
        },
        tail = {
            cursor = nil,
            texthl = { 'SmoothCursor' },
        },
        unstop = false,  -- Determines if the cursor should stop or not (false means it will stop)
    },

    autostart = true,           -- Automatically start SmoothCursor
    always_redraw = true,       -- Redraw the screen on each update
    flyin_effect = nil,         -- Choose "bottom" or "top" for flying effect
    speed = 25,                 -- Max speed is 100 to stick with your current position
    intervals = 35,             -- Update intervals in milliseconds
    priority = 10,              -- Set marker priority
    timeout = 3000,             -- Timeout for animations in milliseconds
    threshold = 3,              -- Animate only if cursor moves more than this many lines
    max_threshold = nil,        -- If you move more than this many lines, don't animate (if `nil`, deactivate check)
    disable_float_win = false,  -- Disable in floating windows
    enabled_filetypes = nil,    -- Enable only for specific file types, e.g., { "lua", "vim" }
    disabled_filetypes = nil,   -- Disable for these file types, ignored if enabled_filetypes is set. e.g., { "TelescopePrompt", "NvimTree" }
    show_last_positions = nil,  -- Show the position of the latest input mode positions. 
                                -- A value of "enter" means the position will be updated when entering the mode.
                                -- A value of "leave" means the position will be updated when leaving the mode.
                                -- `nil` = disabled
})

