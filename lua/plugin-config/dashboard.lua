local status, db = pcall(require, "dashboard")
if not status then
    vim.notify("Cannot find dashboard!")
    return
end

db.setup({
    theme = "doom",
    config = {
        header = {
            [[]],
            [[]],
            [[          ▀████▀▄▄              ▄█ ]],
            [[            █▀    ▀▀▄▄▄▄▄    ▄▄▀▀█ ]],
            [[    ▄        █          ▀▀▀▀▄  ▄▀  ]],
            [[   ▄▀ ▀▄      ▀▄              ▀▄▀  ]],
            [[  ▄▀    █     █▀   ▄█▀▄      ▄█    ]],
            [[  ▀▄     ▀▄  █     ▀██▀     ██▄█   ]],
            [[   ▀▄    ▄▀ █   ▄██▄   ▄  ▄  ▀▀ █  ]],
            [[    █  ▄▀  █    ▀██▀    ▀▀ ▀▀  ▄▀  ]],
            [[   █   █  █      ▄▄           ▄▀   ]],
            [[]],
            [[]],
        },
        center = {
            {
                icon = "  ",
                desc = "Projects                            ",
                action = "Telescope projects",
            },
            {
                icon = "  ",
                desc = "Recently files                      ",
                action = "Telescope oldfiles",
            },
            {
                icon = "  ",
                desc = "Edit keymaps                    ",
                action = "edit ~/.config/nvim/lua/keymaps.lua",
            },
            {
                icon = "  ",
                desc = "Edit Projects                       ",
                action = "edit ~/.local/share/nvim/project_nvim/project_history",
            },
        },
        footer = {
            "",
            "",
            "To be best",
        },
    }
})



