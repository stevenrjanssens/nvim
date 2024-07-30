local autocmd = vim.api.nvim_create_autocmd

-- Highlight yanked text
autocmd("TextYankPost", {
    callback = function()
        vim.highlight.on_yank({
            timeout = 40,
        })
    end,
    desc = "Highlight Yanked Text",
})

-- Disable new line comment
autocmd("BufEnter", {
  callback = function()
    vim.opt.formatoptions:remove { "c", "r", "o" }
  end,
  desc = "Disable New Line Comment",
})

-- Go
autocmd("BufEnter", {
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
