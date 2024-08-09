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
	-- {
	-- 	"kdheepak/monochrome.nvim",
	-- 	as = "monochrome",
	-- 	config = function()
	-- 		vim.cmd.colorscheme("monochrome")
	-- 	end,
	-- },
	{
		"slugbyte/lackluster.nvim",
		config = function()
			local lackluster = require("lackluster")
			-- !must called setup() before setting the colorscheme!
			require("nvim-web-devicons").setup({
				color_icons = false,
				override = {
					["default_icon"] = {
						color = lackluster.color.gray4,
						name = "Default",
					},
				},
			})
			vim.cmd.colorscheme("lackluster")
		end,
	},
}
