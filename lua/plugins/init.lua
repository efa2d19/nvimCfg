return {
    {
        "stevearc/conform.nvim",
        event = "BufWritePre",
        opts = require("configs.conform"),
    },

    {
        "neovim/nvim-lspconfig",
        config = function()
            require("nvchad.configs.lspconfig").defaults()
            require("configs.lspconfig")
        end,
    },

    -- test new blink
    { import = "nvchad.blink.lazyspec" },

    {
        "nvim-tree/nvim-tree.lua",
        opts = function()
            require("configs.nvimtree")
        end,
    },

    {
        "nvim-treesitter/nvim-treesitter",
        config = function(_, opts)
            require("nvim-treesitter.configs").setup(opts)
            require("configs.treesitter")
        end,
    },

    {
        "lewis6991/gitsigns.nvim",
        config = function()
            require("configs.gitsigns")
        end,
    },

    {
        "mg979/vim-visual-multi",
        event = "VeryLazy",
    },
}
