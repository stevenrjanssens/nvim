return {
    "nvim-telescope/telescope.nvim",
    branch = "0.1.x",
    dependencies = {
        "nvim-lua/plenary.nvim",
        { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' }
    },
    config = function()
        require("telescope").setup({})
        require("telescope").load_extension('fzf')

        local builtin = require("telescope.builtin")
        vim.keymap.set("n", "<leader>fd", builtin.find_files, { desc = "Fuzzy find in directory" })
        vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "Fuzzy find grep" })
        vim.keymap.set("n", "<leader>fh", builtin.help_tags, { desc = "Fuzzy find help" })
        vim.keymap.set("n", "<leader>fr", builtin.resume, { desc = "Resume fuzzy find" })
        vim.keymap.set("n", "<leader>fk", builtin.keymaps, { desc = "Fuzzy find keymaps" })
        vim.keymap.set("n", "<C-p>", builtin.git_files, {desc = "Fuzzy find git (project) files" })
        vim.keymap.set("n", "<leader><leader>", builtin.buffers, { desc = "Fuzzy find buffers" })
        vim.keymap.set("n", "<leader>/", builtin.current_buffer_fuzzy_find, { desc = "Fuzzy find current buffer" })
        vim.keymap.set("n", "<leader>en", function()
            require("telescope.builtin").find_files {
                cwd = vim.fn.stdpath("config")
            }
        end)

        vim.keymap.set("n", "<leader>*", function()
            local word = vim.fn.expand("<cword>")
            builtin.grep_string({ search = word })
        end, { desc = "Fuzzy find current word" })
    end,
}
