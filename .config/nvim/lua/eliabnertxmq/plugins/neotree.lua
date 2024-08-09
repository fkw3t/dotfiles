return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"MunifTanjim/nui.nvim",
		"nvim-tree/nvim-web-devicons",
	},
	keys = {
		{ "<leader>ee", "<cmd>Neotree toggle<cr>", desc = "Neotree Toggle" },
		{ "<leader>ec", "<cmd>Neotree reveal<cr>", desc = "Neotree Reveal" },
	},
	config = function()
		require("neo-tree").setup({
			filesystem = {
				filtered_items = {
					visible = true,
					hide_dotfiles = false,
				},
			},
			window = {
				mappings = {
					["<C-t>"] = "open_tabnew",
				},
			},
		})
	end,
}
