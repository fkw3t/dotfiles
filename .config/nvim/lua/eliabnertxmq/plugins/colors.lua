return {
    {
        "rose-pine/neovim",
        name = "rose-pine",
        config = function()
            require("rose-pine").setup({
                disable_background = true,
                -- styles = {
                -- 	italic = false,
                -- },
                styles = {
                    comments = { "italic" },
                    conditionals = { "italic" },
                    loops = {},
                    functions = {},
                    keywords = { "bold" },
                    strings = {},
                    variables = {},
                    numbers = {},
                    booleans = { "bold" },
                    properties = {},
                    types = { "bold" },
                    operators = {},
                },
            })

            -- vim.cmd.colorscheme("rose-pine")
        end,
    },
    {
        "catppuccin/nvim",
        as = "catppuccin",
        config = function()
            require("catppuccin").setup({
                flavour = "mocha",
                transparent_background = true,
                styles = {
                    comments = { "italic" },
                    conditionals = { "italic" },
                    loops = {},
                    functions = {},
                    keywords = { "bold" },
                    strings = {},
                    variables = {},
                    numbers = {},
                    booleans = { "bold" },
                    properties = {},
                    types = { "bold" },
                    operators = {},
                },
            })
            -- vim.cmd.colorscheme("catppuccin")
        end,
    },
    {
        "slugbyte/lackluster.nvim",
        config = function()
            local lackluster = require("lackluster")
            lackluster.setup({
                disable_plugin = {},
                tweak_highlight = {
                    ["@keyword"] = {
                        overwrite = true,
                        bold = true,
                    },
                    ["@function"] = {
                        overwrite = true,
                        bold = true,
                    },
                    ["@boolean"] = {
                        overwrite = true,
                        bold = true,
                    },
                    ["@type"] = {
                        overwrite = true,
                        bold = true,
                    },
                },
            })

            require("nvim-web-devicons").setup({
                color_icons = false,
                override = {
                    ["default_icon"] = {
                        color = lackluster.color.gray6,
                        name = "Default",
                    },
                },
            })

            -- vim.cmd.colorscheme("lackluster")
            -- vim.cmd.colorscheme("lackluster-hack")
            -- vim.cmd.colorscheme("lackluster-mint")
            vim.cmd.colorscheme("lackluster-dark")
        end,
    },
}
