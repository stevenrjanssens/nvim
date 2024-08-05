-- PaperColor doesn't support semantic highlighting
-- return {
--     "NLKNguyen/papercolor-theme",
--     priority = 1000,
--     init = function()
--         vim.cmd.colorscheme("papercolor")
--     end,
-- }

-- return {
--     {
--         "catppuccin/nvim",
--         name = "catpuccin",
--         priority = 1000,
--         config = function()
--             require("catppuccin").setup({
--                 flavour = "auto", -- latte, frappe, macchiato, mocha
--                 background = { -- :h background
--                     light = "latte",
--                     dark = "mocha",
--                 },
--                 transparent_background = false, -- disables setting the background color.
--                 show_end_of_buffer = false, -- shows the '~' characters after the end of buffers
--                 term_colors = false, -- sets terminal colors (e.g. `g:terminal_color_0`)
--                 dim_inactive = {
--                     enabled = false, -- dims the background color of inactive window
--                     shade = "dark",
--                     percentage = 0.15, -- percentage of the shade to apply to the inactive window
--                 },
--                 no_italic = false, -- Force no italic
--                 no_bold = false, -- Force no bold
--                 no_underline = false, -- Force no underline
--                 styles = { -- Handles the styles of general hi groups (see `:h highlight-args`):
--                     comments = {}, -- Change the style of comments
--                     conditionals = { "italic" },
--                     loops = {},
--                     functions = {},
--                     keywords = {},
--                     strings = {},
--                     variables = {},
--                     numbers = {},
--                     booleans = {},
--                     properties = {},
--                     types = {},
--                     operators = {},
--                     -- miscs = {}, -- Uncomment to turn off hard-coded styles
--                 },
--                 color_overrides = {},
--                 custom_highlights = {},
--                 default_integrations = true,
--                 integrations = {
--                     cmp = true,
--                     gitsigns = true,
--                     nvimtree = true,
--                     treesitter = true,
--                     notify = false,
--                     mini = {
--                         enabled = true,
--                         indentscope_color = "",
--                     },
--                     -- For more plugins integrations please scroll down (https://github.com/catppuccin/nvim#integrations)
--                 },
--             })
--         end,
--         init = function()
--             vim.cmd.colorscheme("catppuccin")
--         end,
--     }
-- }

return {
    {
        'sainnhe/gruvbox-material',
        lazy = false,
        priority = 1000,
        config = function()
            -- Optionally configure and load the colorscheme
            -- directly inside the plugin declaration.
            vim.g.gruvbox_material_enable_italic = false
            vim.g.gruvbox_material_background = "hard"
            vim.g.gruvbox_material_better_performance = 1
            vim.cmd.colorscheme("gruvbox-material")
        end
    }
}
