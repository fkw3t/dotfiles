return {
	{
		"nvim-telescope/telescope.nvim",

		tag = "0.1.5",

		dependencies = {
			"nvim-lua/plenary.nvim",
		},

		config = function()
			local telescope = require("telescope")
			local actions = require("telescope.actions")
			local builtin = require("telescope.builtin")

			telescope.setup({
				defaults = {
					path_display = { "smart" },
					mappings = {
						i = {
							["<C-k>"] = actions.move_selection_previous, -- move to prev result
							["<C-j>"] = actions.move_selection_next, -- move to next result
						},
					},
				},
			})

			vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Fuzzy find files in cwd" })
			vim.keymap.set("n", "<leader>fr", builtin.oldfiles, { desc = "Fuzzy find recent files" })
			vim.keymap.set("n", "<leader>fg", builtin.git_files, { desc = "Fuzzy find git files" })
			vim.keymap.set("n", "<leader>ft", "<cmd>TodoTelescope<cr>", { desc = "Find TODOs" })

			-- grep
			vim.keymap.set("n", "<leader>fs", builtin.live_grep, { desc = "Find files by live grep" })
			vim.keymap.set("n", "<leader>fS", function()
				builtin.grep_string({ search = vim.fn.input("Grep > ") })
			end, { desc = "Search for a manually entered string" })

			vim.keymap.set("n", "<leader>fw", function()
				local word = vim.fn.expand("<cword>")
				builtin.grep_string({ search = word })
			end, { desc = "Search string under cursor (word)" })

			vim.keymap.set("n", "<leader>fW", function()
				local word = vim.fn.expand("<cWORD>")
				builtin.grep_string({ search = word })
			end, { desc = "Search string under cursor (sequence of characters)" })
		end,
	},
	{
		"nvim-telescope/telescope-ui-select.nvim",
		config = function()
			require("telescope").setup({
				extensions = {
					["ui-select"] = {
						require("telescope.themes").get_dropdown({}),
					},
				},
			})
			require("telescope").load_extension("ui-select")
		end,
	},
}
