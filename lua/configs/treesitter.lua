local og = require("nvchad.configs.treesitter")

local ensure_installed = {
    "vim",
    "lua",
    "vimdoc",
    "html",
    "css",
    "kotlin",
}

og.highlight.enable = true

for _, v in ipairs(ensure_installed) do
    table.insert(og.ensure_installed, v)
end

return og
