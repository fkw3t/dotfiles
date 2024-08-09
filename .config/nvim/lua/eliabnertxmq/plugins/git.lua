return {
	{
		"lewis6991/gitsigns.nvim",
		config = function()
			require("gitsigns").setup()

			vim.keymap.set({ "n", "v" }, "<leader>gs", ":Gitsigns stage_hunk<CR>")
			vim.keymap.set({ "n", "v" }, "<leader>gr", ":Gitsigns reset_hunk<CR>")
			vim.keymap.set("n", "<leader>gu", "<cmd>Gitsigns undo_stage_hunk<CR>")
			vim.keymap.set("n", "<leader>gR", "<cmd>Gitsigns reset_buffer<CR>")
			vim.keymap.set("n", "<leader>gp", "<cmd>Gitsigns preview_hunk<CR>")
			vim.keymap.set("n", "<leader>gb", "<cmd>Gitsigns toggle_current_line_blame<CR>")
			vim.keymap.set("n", "<leader>gd", "<cmd>Gitsigns diffthis<CR>")
		end,
	},
	{
		"tpope/vim-fugitive",
	},
	{
		"kdheepak/lazygit.nvim",
		cmd = {
			"LazyGit",
			"LazyGitConfig",
			"LazyGitCurrentFile",
			"LazyGitFilter",
			"LazyGitFilterCurrentFile",
		},
		dependencies = {
			"nvim-lua/plenary.nvim",
		},
		keys = {
			{ "<leader>lg", "<cmd>LazyGit<cr>", desc = "LazyGit" },
		},
	},
}
