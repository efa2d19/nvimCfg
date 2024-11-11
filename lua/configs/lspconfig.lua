require("nvchad.configs.lspconfig").defaults()

local servers = {
    "bashls",
    "pylsp",
    "pyright",
    "ruff",
    "sourcekit",
}
vim.lsp.enable(servers)
