return {
    {
        "nvim-tree/nvim-tree.lua",
        opts = {
            view = {
                -- float = {
                --     enable = true,
                --     quit_on_focus_loss = true,
                --     open_win_config = {
                --         relative = "editor",
                --         border = "rounded",
                --         width = 50,
                --         height = 40,
                --         row = 5,
                --         col = 120,
                --     }
                -- },
                side = 'right',
                width = 50
            },
            renderer = {
                highlight_git = true,
                highlight_opened_files = "all",
            },
            git = {
                enable = true,
                ignore = false,
                timeout = 500,
            }, 
            filters = {
                dotfiles = false
            }
        },
    },
}
