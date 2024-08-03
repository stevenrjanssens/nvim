return {
    "nvim-telescope/telescope.nvim",
    branch = "0.1.x",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
        require("telescope").setup({})

        local builtin = require("telescope.builtin")
        vim.keymap.set("n", "<leader>sf", builtin.find_files, { desc = "Fuzzy find all files" })
        vim.keymap.set("n", "<leader>sg", builtin.live_grep, { desc = "Fuzzy find grep" })
        vim.keymap.set("n", "<leader>sh", builtin.help_tags, { desc = "Fuzzy find help" })
        vim.keymap.set("n", "<leader>sr", builtin.resume, { desc = "Resume fuzzy find" })
        vim.keymap.set("n", "<leader>sk", builtin.keymaps, { desc = "Fuzzy find keymaps" })
        vim.keymap.set("n", "<C-p>", builtin.git_files, {desc = "Fuzzy find git (project) files" })
        vim.keymap.set("n", "<leader><leader>", builtin.buffers, { desc = "Fuzzy find buffers" })
        vim.keymap.set("n", "<leader>/", builtin.current_buffer_fuzzy_find, { desc = "Fuzzy find current buffer" })

        vim.keymap.set("n", "<leader>*", function()
            local word = vim.fn.expand("<cword>")
            builtin.grep_string({ search = word })
        end, { desc = "Fuzzy find current word" })
    end,
}
