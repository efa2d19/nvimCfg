local options = {
    ensure_installed = {
        "vim",
        "lua",
        "vimdoc",
        "html",
        "css",
        "kotlin",
    },
    highlight = {
        enable = true,
    },
}

require("nvim-treesitter.configs").setup(options)
