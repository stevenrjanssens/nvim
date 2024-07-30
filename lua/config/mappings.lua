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
