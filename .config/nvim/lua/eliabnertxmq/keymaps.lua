vim.g.mapleader = " "

vim.keymap.set("n", "<leader>pv", vim.cmd.Ex, { desc = "Open explore" })

vim.keymap.set("n", "<leader><leader>", function()
	vim.cmd("so")
end, { desc = "Restart nvim" })

-- window
vim.keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" })
vim.keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" })
vim.keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" })
vim.keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" })

vim.keymap.set("n", "<C-h>", "<C-w><C-h>", { desc = "Move focus to the left window" })
vim.keymap.set("n", "<C-l>", "<C-w><C-l>", { desc = "Move focus to the right window" })
vim.keymap.set("n", "<C-j>", "<C-w><C-j>", { desc = "Move focus to the lower window" })
vim.keymap.set("n", "<C-k>", "<C-w><C-k>", { desc = "Move focus to the upper window" })

-- buffer
vim.keymap.set("n", "<leader>bls", ":ls<CR>", { desc = "List buffers" })
vim.keymap.set("n", "<leader>bn", ":bnext<CR>", { desc = "Open next buffer" })
vim.keymap.set("n", "<leader>bp", ":bprevious<CR>", { desc = "Open previous buffer" })

-- tab
vim.keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" })
vim.keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" })
vim.keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab" })
vim.keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to previous tab" })
vim.keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" })

vim.keymap.set({ "v", "n" }, "J", ":m '>+1<CR>gv=gv", { desc = "Move current line down in visual mode" })
vim.keymap.set({ "v", "n" }, "K", ":m '<-2<CR>gv=gv", { desc = "Move current line up in visual mode" })

vim.keymap.set("n", "<C-d>", "<C-d>zz", { desc = "Scroll down and center current line in the window" })
vim.keymap.set("n", "<C-u>", "<C-u>zz", { desc = "Scroll up and center current line in the window" })

vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]], { desc = "Copy selected text to clipboard" })
vim.keymap.set("n", "<leader>Y", [["+Y]], { desc = "Copy current line to clipboard" })
vim.keymap.set({ "n", "v" }, "<leader>P", [["+p]], { desc = "Paste from clipboard" })

vim.keymap.set("n", "<leader>lcd", "<cmd>cd %:p:h<CR>", { desc = "Set current dir as reference dir" })
