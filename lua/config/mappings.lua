vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Yank into system clipboard
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]], { desc = "Yank into system clipboard" })
vim.keymap.set({"n"}, "<leader>Y", [["+Y]], { desc = "Yank line(s) into system clipboard" })

vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<cr>")

-- Quickfix navigation
vim.keymap.set("n", "<C-j>", "<cmd>cnext<cr>zz")
vim.keymap.set("n", "<C-k>", "<cmd>cprev<cr>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lnext<cr>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lprev<cr>zz")
