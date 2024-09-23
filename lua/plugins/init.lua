return {
    {
        "stevearc/conform.nvim",
        event = "BufWritePre",
        opts = function()
            return require("configs.conform")
        end,
    },

    {
        "neovim/nvim-lspconfig",
        config = function()
            require("configs.lspconfig")
        end,
    },

    -- test new blink
    { import = "nvchad.blink.lazyspec" },

    {
        "nvim-tree/nvim-tree.lua",
        opts = function()
            return require("configs.nvimtree")
        end,
    },

    {
        "nvim-treesitter/nvim-treesitter",
        branch = "main",
        opts = function()
            return require("configs.treesitter")
        end,
        config = function(_, opts)
            require("nvim-treesitter.config").setup(opts)
        end,
    },

    {
        "lewis6991/gitsigns.nvim",
        opts = function()
            return require("configs.gitsigns")
        end,
    },

    {
        "mg979/vim-visual-multi",
        event = "VeryLazy",
    },
}
