return {
    {
        "ThePrimeagen/harpoon",
        branch = "harpoon2",
        dependencies = { "nvim-lua/plenary.nvim" },
        config = function()
            require("harpoon"):setup()
        end,
    },
    {
        "rbong/vim-flog",
        lazy = true,
        cmd = { "Flog", "Flogsplit", "Floggit" },
        dependencies = {
            "tpope/vim-fugitive",
        },
    },
    {
        "mfussenegger/nvim-dap",
        lazy = false,
    },
    {
        "nvim-lua/plenary.nvim",
        lazy = false,
    },
    {
        "OXY2DEV/markview.nvim",
        lazy = false,

        -- Completion for `blink.cmp`
        -- dependencies = { "saghen/blink.cmp" },
    },
    {
        "vyfor/cord.nvim",
        build = ":Cord update",
        config = function()
            require "configs.cord"
        end,
    },
    {
        "nvim-lua/plenary.nvim",
        name = "plenary",
    },
    {
        "stevearc/conform.nvim",
        event = { "BufReadPre", "BufNewFile" },
        opts = require "configs.conform",
    },

    {
        "williamboman/mason.nvim",
        opts = {
            ensure_installed = {
                "lua-language-server",
                "stylua",
                "html-lsp",
                "css-lsp",
                "prettier",
                "eslint-lsp",
                "eslint_d",
                "gopls",
                "js-debug-adapter",
                "typescript-language-server",
            },
        },
    },

    {
        "nvim-treesitter/nvim-treesitter",
        lazy = false,
        build = ':TSUpdate',
        opts = {
            ensure_installed = {
                "vim",
                "lua",
                "vimdoc",
                "html",
                "css",
                "typescript",
                "javascript",
                "go",
            },
        },
    },

    {
        "neovim/nvim-lspconfig",

        config = function()
            require "configs.lspconfig"
        end,
    },

    {
        "mfussenegger/nvim-lint",
        event = "VeryLazy",
        config = function()
            require "configs.lint"
        end,
    },
}
