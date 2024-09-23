local og = require("nvchad.configs.treesitter")

local ensure_installed = {
    "vim",
    "lua",
    "vimdoc",
    "html",
    "css",
    "kotlin",
}

for _, v in ipairs(ensure_installed) do
    table.insert(og.ensure_installed, v)
end

return og
