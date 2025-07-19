require("eliabnertxmq.settings")
require("eliabnertxmq.keymaps")
require("eliabnertxmq.lazy_init")

local augroup = vim.api.nvim_create_augroup
local defaultGroup = augroup("default", {})
local autocmd = vim.api.nvim_create_autocmd

autocmd({ "BufWritePre" }, {
	group = defaultGroup,
	pattern = "*",
	command = [[%s/\s\+$//e]],
})

vim.g.netrw_browse_split = 0
vim.g.netrw_banner = 0
vim.g.netrw_winsize = 25
