require("nvchad.mappings")

local map = vim.keymap.set
local g = vim.g

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

g.VM_default_mappings = 0
g.VM_maps = {
    ["Find Under"] = "<C-J>",
    ["Add Cursor Down"] = "<C-j>",
    ["Add Cursor Up"] = "<C-k>",
}
