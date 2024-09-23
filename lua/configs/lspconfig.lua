require("nvchad.configs.lspconfig").defaults()

local servers = {
    "bashls",
    "pylsp",
    "pyright",
    "ruff_lsp",
}
vim.lsp.enable(servers)
