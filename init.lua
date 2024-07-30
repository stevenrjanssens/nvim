vim.opt.guicursor = "" --disable cursor styling

vim.opt.termguicolors = true
vim.opt.background = "light"

vim.opt.mouse = ""
vim.opt.mousescroll = "ver:2,hor:1"

vim.opt.smartindent = true
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.expandtab = true

vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.signcolumn = "yes"

vim.opt.scrolloff = 6

vim.opt.hlsearch = true
vim.opt.incsearch = true

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Yank into system clipboard
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set({"n"}, "<leader>Y", [["+Y]])

vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<cr>") 

-- Quickfix navigation
vim.keymap.set("n", "<C-k>", "<cmd>cnext<cr>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<cr>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<cr>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<cr>zz")

local yank_group = vim.api.nvim_create_augroup("HighlightYank", {})

-- Highlight yanked text
vim.api.nvim_create_autocmd('TextYankPost', {
    callback = function()
        vim.highlight.on_yank({
            timeout = 40,
        })
    end,
})
