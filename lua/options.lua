require("nvchad.options")

local o = vim.o
local opt = vim.opt
local env = vim.env

o.shiftwidth = 4
o.tabstop = 4
o.softtabstop = 4
o.grepprg = "ag --vimgrep"

opt.relativenumber = true
