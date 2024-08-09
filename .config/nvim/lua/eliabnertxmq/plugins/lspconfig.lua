return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup({
				ui = {
					icons = {
						package_installed = "✓",
						package_pending = "➜",
						package_uninstalled = "✗",
					},
				},
			})
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = {
					"lua_ls",
				},
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		dependencies = {
			"hrsh7th/cmp-nvim-lsp",
			{ "antosha417/nvim-lsp-file-operations", config = true },
			{ "folke/neodev.nvim", opts = {} },
		},
		config = function()
			local lspconfig = require("lspconfig")
			local cmp_nvim_lsp = require("cmp_nvim_lsp")
			local mason_lspconfig = require("mason-lspconfig")

			lspconfig.lua_ls.setup({})

			vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, { desc = "LSP, smart rename" })
			vim.keymap.set("n", "<leader>rs", ":LspRestart<CR>", { desc = "LSP, restart" })
			vim.keymap.set("n", "K", vim.lsp.buf.hover, { desc = "LSP, show documentation" })
			vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, { desc = "LSP, show code actions" })
			-- vim.keymap.set("n", "gd", "<cmd>Telescope lsp_definitions<CR>", { desc = "Show LSP definitions" })
			vim.keymap.set("n", "gd", vim.lsp.buf.definition, { desc = "LSP, go to definition" })
			vim.keymap.set(
				"n",
				"gtd",
				"<cmd>tab split | lua vim.lsp.buf.definition()<CR>",
				{ desc = "LSP, go to definition in a new tab" }
			)
			vim.keymap.set("n", "<leader>gt", vim.lsp.buf.type_definition, { desc = "LSP, go to type definition" })
			vim.keymap.set(
				"n",
				"gtt",
				"<cmd>tab split | lua vim.lsp.buf.type_definition()<CR>",
				{ desc = "LSP, go to type definition in a new tab" }
			)
			vim.keymap.set("n", "gD", vim.lsp.buf.declaration, { desc = "LSP, go to declaration" })
			vim.keymap.set(
				"n",
				"gtD",
				"<cmd>tab split | lua vim.lsp.buf.declaration()<CR>",
				{ desc = "LSP, go to declaration in a new tab" }
			)
			vim.keymap.set("n", "gr", "<cmd>Telescope lsp_references<CR>", { desc = "LSP, list references" })
			vim.keymap.set("n", "gi", "<cmd>Telescope lsp_implementations<CR>", { desc = "LSP, list implementations" })

			-- cmp
			local capabilities = cmp_nvim_lsp.default_capabilities()
			mason_lspconfig.setup_handlers({
				function(server_name)
					lspconfig[server_name].setup({
						capabilities = capabilities,
					})
				end,
			})
		end,
	},
}
