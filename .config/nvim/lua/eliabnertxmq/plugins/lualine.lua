return {
	{
		"catppuccin/nvim",
		as = "catppuccin",
	},
	{
		"nvim-lualine/lualine.nvim",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		config = function()
			local function get_file_icon()
				local filename = vim.fn.expand("%:t")
				local icon = require("nvim-web-devicons").get_icon(filename, vim.bo.filetype)
				return icon
			end

			require("lualine").setup({
				options = {
					icons_enabled = true,
					-- theme = "catppuccin",
					theme = "lackluster",
					component_separators = { left = "", right = "" },
					section_separators = { left = " ", right = " " },
					always_divide_middle = true,
					globalstatus = true,
				},
				sections = {
					lualine_a = { { "mode", icon = " " } },
					lualine_b = { { get_file_icon }, "filename" },
					lualine_c = { { "branch", icon = " " }, "diagnostics" },
					lualine_x = { "" },
					-- lualine_y = { { "location", icon = " " } },
					lualine_z = { { "progress", icon = " " } },
				},
				inactive_sections = {
					lualine_a = {},
					lualine_b = {},
					lualine_c = { "filename" },
					lualine_x = { "location" },
					lualine_y = {},
					lualine_z = {},
				},
				tabline = {},
				extensions = { "neo-tree" },
			})
		end,
	},
}
