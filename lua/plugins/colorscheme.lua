-- PaperColor doesn't support semantic highlighting
-- return {
--     "NLKNguyen/papercolor-theme",
--     lazy = false,
--     priority = 1000,
--     init = function()
--         vim.cmd.colorscheme("papercolor")
--     end,
-- }

return {
    {
        "catppuccin/nvim",
        lazy = false,
        name = "catpuccin",
        priority = 1000,
        config = function()
            require("catppuccin").setup({
                flavour = "auto", -- latte, frappe, macchiato, mocha
                background = { -- :h background
                    light = "latte",
                    dark = "mocha",
                },
                transparent_background = false, -- disables setting the background color.
                show_end_of_buffer = false, -- shows the '~' characters after the end of buffers
                term_colors = false, -- sets terminal colors (e.g. `g:terminal_color_0`)
                dim_inactive = {
                    enabled = false, -- dims the background color of inactive window
                    shade = "dark",
                    percentage = 0.15, -- percentage of the shade to apply to the inactive window
                },
                no_italic = true, -- Force no italic
                no_bold = false, -- Force no bold
                no_underline = false, -- Force no underline
                styles = { -- Handles the styles of general hi groups (see `:h highlight-args`):
                    comments = {}, -- Change the style of comments
                    conditionals = {},
                    loops = {},
                    functions = {},
                    keywords = {},
                    strings = {},
                    variables = {},
                    numbers = {},
                    booleans = {},
                    properties = {},
                    types = {},
                    operators = {},
                    -- miscs = {}, -- Uncomment to turn off hard-coded styles
                },
                color_overrides = {},
                custom_highlights = {},
                default_integrations = true,
                integrations = {
                    cmp = true,
                    gitsigns = true,
                    native_lsp= {enabled = true},
                    nvimtree = true,
                    telescope = true,
                    treesitter = true,
                    treesitter_context = true,
                    notify = false,
                    mini = {
                        enabled = true,
                        indentscope_color = "",
                    },
                    -- For more plugins integrations please scroll down (https://github.com/catppuccin/nvim#integrations)
                },
            })
        end,
        init = function()
            vim.cmd.colorscheme("catppuccin")
        end,
    }
}

-- return {
--     {
--         'sainnhe/gruvbox-material',
--         lazy = false,
--         priority = 1000,
--         config = function()
--             vim.g.gruvbox_material_background = "hard"
--             vim.g.gruvbox_material_better_performance = 1
--             vim.g.gruvbox_material_enable_italic = true
--             vim.g.gruvbox_material_disable_italic_comment = true
--             vim.cmd.colorscheme("gruvbox-material")
--         end
--     }
-- }

-- return {
--     {
--         "folke/tokyonight.nvim",
--         lazy = false,
--         priority = 1000,
--         opts = {
--             style = "day", -- The theme comes in three styles, `storm`, a darker variant `night` and `day`
--             light_style = "day", -- The theme is used when the background is set to light
--             transparent = false, -- Enable this to disable setting the background color
--             terminal_colors = true, -- Configure the colors used when opening a `:terminal` in Neovim
--             styles = {
--                 -- Style to be applied to different syntax groups
--                 -- Value is any valid attr-list value for `:help nvim_set_hl`
--                 comments = { italic = false },
--                 keywords = { italic = false },
--                 functions = {},
--                 variables = {},
--                 -- Background styles. Can be "dark", "transparent" or "normal"
--                 sidebars = "dark", -- style for sidebars, see below
--                 floats = "dark", -- style for floating windows
--             },
--             day_brightness = 0.25, -- Adjusts the brightness of the colors of the **Day** style. Number between 0 and 1, from dull to vibrant colors
--             dim_inactive = false, -- dims inactive windows
--             lualine_bold = false, -- When `true`, section headers in the lualine theme will be bold
--             cache = true, -- When set to true, the theme will be cached for better performance
--         },
--         init = function()
--             vim.cmd.colorscheme("tokyonight")
--         end
--     }
-- }
