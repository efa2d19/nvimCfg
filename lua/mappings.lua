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

-- telescope

function vim.getVisualSelection()
    local current_clipboard_content = vim.fn.getreg('"')

    vim.cmd('noau normal! "vy"')
    local text = vim.fn.getreg("v")
    vim.fn.setreg("v", {})

    vim.fn.setreg('"', current_clipboard_content)

    text = string.gsub(text, "\n", "")
    if #text > 0 then
        return text
    else
        return ""
    end
end

map("v", "<leader>fw", function()
    local telescope = require("telescope.builtin")
    local selection = vim.getVisualSelection()
    telescope.live_grep({ default_text = selection })
end, { desc = "telescope live grep" })

map("v", "<leader>fz", function()
    local telescope = require("telescope.builtin")
    local selection = vim.getVisualSelection()
    telescope.current_buffer_fuzzy_find({ default_text = selection })
end, { desc = "telescope find in current buffer" })

map("v", "<leader>ff", function()
    local telescope = require("telescope.builtin")
    local selection = vim.getVisualSelection()
    telescope.find_files({ default_text = selection })
end, { desc = "telescope find files" })

map("v", "<leader>fa", function()
    local telescope = require("telescope.builtin")
    local selection = vim.getVisualSelection()
    telescope.find_files({ default_text = selection, follow = true, no_ignore = true, hidden = true })
end, { desc = "telescope find all files" })

map("v", "<leader>fe", "<cmd>Telescope grep_string<CR>", { desc = "telescope find current selection" })

if vim.opt.diff:get() then
    map("n", "<C-h>", "<cmd>diffget LOCAL<CR>", { silent = true, desc = "difftool choose local" })
    map("n", "<C-l>", "<cmd>diffget REMOTE<CR>", { silent = true, desc = "difftool choose remote" })
    map("n", "<leader>q", "<cmd>cquit<CR>", { silent = true, desc = "difftool exit" })
end
