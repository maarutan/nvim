local function default_header()
    return {
        '','','',
        '███╗   ███╗ █████╗  █████╗ ██████╗ ██╗   ██╗',
        '████╗ ████║██╔══██╗██╔══██╗██╔══██╗██║   ██║',
        '██╔████╔██║███████║███████║██████╔╝██║   ██║',
        '██║╚██╔╝██║██╔══██║██╔══██║██╔══██╗██║   ██║',
        '██║ ╚═╝ ██║██║  ██║██║  ██║██║  ██║╚██████╔╝',
        '╚═╝     ╚═╝╚═╝  ╚═╝╚═╝  ╚═╝╚═╝  ╚═╝ ╚═════╝ ',
        '','','',
    }
end



require('dashboard').setup {
    theme = 'doom',
    config = {
        header = default_header(),
        center = {
            {
                icon = '󰙅 ',
                icon_hl = 'Title',
                desc = 'Open tree',
                desc_hl = 'String',
                key = 'e',
                keymap = 'SPC e',
                key_hl = 'Number',
                action = ':NeoTreeFocus'
            }, {
                icon = '󰈞 ',
                icon_hl = 'Title',
                desc = 'Find files',
                desc_hl = 'String',
                key = 'f',
                keymap = 'SPC f f',
                key_hl = 'Number',
                action = ':Telescope find_files'
            }, {
                icon = ' ',
                icon_hl = 'Title',
                desc = 'Find text',
                desc_hl = 'String',
                key = 'w',
                keymap = 'SPC f w',
                key_hl = 'Number',
                action = ':Telescope live_grep'
            }, {
                icon = ' ',
                icon_hl = 'Title',
                desc = 'Git Branches',
                desc_hl = 'String',
                key = 'b',
                keymap = 'SPC g b',
                key_hl = 'Number',
                action = ':Telescope git_branches'
            }, {
                icon = ' ',
                icon_hl = 'Title',
                desc = 'Recent Sessions',
                desc_hl = 'String',
                key = 'r',
                keymap = 'SPC s r',
                key_hl = 'Number',
                action = ':LoadSession'  -- Заменили на :LoadSession
            }
        },
        footer = {}, -- footer
    }
}

