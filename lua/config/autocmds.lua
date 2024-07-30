-- Highlight yanked text
vim.api.nvim_create_autocmd("TextYankPost", {
    callback = function()
        vim.highlight.on_yank({
            timeout = 40,
        })
    end,
})

-- Go
vim.api.nvim_create_autocmd("BufEnter", {
    pattern = { "*.go" },
    callback = function()
        vim.opt_local.expandtab = false
        vim.opt_local.copyindent = true
        vim.opt_local.preserveindent = true
        vim.opt_local.softtabstop = 0
        vim.opt_local.shiftwidth = 4
        vim.opt_local.tabstop = 4
    end,
})
