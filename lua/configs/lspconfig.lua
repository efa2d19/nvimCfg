require("nvchad.configs.lspconfig").defaults()

local servers = {
    "shellcheck",
    "checkmake",
    "lua-language-server",
    "pyright",
    "ruff",
    "sourcekit",
}
vim.lsp.enable(servers)
