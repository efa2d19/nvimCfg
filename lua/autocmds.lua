require("nvchad.autocmds")

-- fixup cursor in tmux --
vim.api.nvim_create_autocmd({ "VimLeave", "VimSuspend" }, {
    group = vim.api.nvim_create_augroup("CursorReset", { clear = true }),
    callback = function()
        vim.opt.guicursor = ""
        vim.fn.chansend(vim.v.stderr, "\x1b[ q")
    end,
})
