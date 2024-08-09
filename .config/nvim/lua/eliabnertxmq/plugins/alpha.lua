return {
	"goolord/alpha-nvim",
	event = "VimEnter",
	config = function()
		local alpha = require("alpha")
		local dashboard = require("alpha.themes.dashboard")

		-- dashboard.section.header.val = {
		-- 	"                                                     ",
		-- 	"  ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗ ",
		-- 	"  ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║ ",
		-- 	"  ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║ ",
		-- 	"  ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║ ",
		-- 	"  ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║ ",
		-- 	"  ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝ ",
		-- 	"                                                     ",
		-- }

		dashboard.section.buttons.val = {
			dashboard.button("e", "new file", "<cmd>ene<CR>"),
			dashboard.button("SPC ee", "toggle file explorer", "<cmd>Neotree toggle<cr>"),
			dashboard.button("SPC ff", "find file", "<cmd>Telescope find_files<CR>"),
			dashboard.button("SPC fs", "find word", "<cmd>Telescope live_grep<CR>"),
			dashboard.button("SPC wr", "restore session for current directory", "<cmd>SessionRestore<CR>"),
			dashboard.button("q", "quit", "<cmd>qa<CR>"),
		}

		alpha.setup(dashboard.opts)
		vim.cmd([[autocmd FileType alpha setlocal nofoldenable]])
	end,
}
